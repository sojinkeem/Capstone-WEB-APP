<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Choice-Kick Alternate Toe Touch</title>
<style>
body {
	background: #0e2a36;
	font-family: sans-serif;
	color: #00c790;
}

svg {
	width: 200px;
	height: 200px;
	position: absolute;
	left: 50%;
	margin-left: -100px;
	top: 50%;
	margin-top: -100px;
}

#range {
	display: block;
}
</style>
</head>
<body id="page-top">
	<%@include file="/WEB-INF/views/header.jsp"%>

	<header id="start"
		class="masthead justify-content-center bg-primary text-dark text-center">
		<div class="container">

			<script> 
				//init();
				function view(){
					init();
					document.getElementById("main").hidden = false;
					document.getElementById("start_btn").hidden = true;
					
				}
			</script>
			<div id="start_btn">
				<!--웹캠 실행하는 버튼-->
				<button class="btn btn-primary" type="button" onclick="view()">Start</button>
			</div>

			<div id="main" hidden>
				<div class="container d-flex align-items-center flex-column">
					<div class="row justify-content-center">
						<div class="col-md-4 col-lg-4 md-4">
							<div class="headline modal-body text-center">
								<svg>
                        			<path id="ring" fill="#00c790" />
  									<circle cx="100" cy="100" r="82" fill="#0e2a36" />
  									<circle cx="100" cy="100" r="73" fill="none" stroke="#00c790" stroke-width="7" opacity=".5" />
  									<text id="counter" x="100" y="100" text-anchor="middle" dominant-baseline="central" fill="#00c790" font-size="60" font-weight="bold">0</text>
                    			</svg>
							</div>
						</div>
						<div class="col-md-8 col-lg-8 md-4">
							<div>
								<canvas id="canvas" class="img-fluid"></canvas>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</header>


	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
		integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
		integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
		integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@tensorflow/tfjs@1.3.1/dist/tf.min.js"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@teachablemachine/pose@0.8/dist/teachablemachine-pose.min.js"></script>
	<script type="text/javascript">
        // More API functions here:
        // https://github.com/googlecreativelab/teachablemachine-community/tree/master/libraries/pose

        // Teachable Machine 내보내기 패널에서 제공하는 모델에 대한 링크
        const URL = "resources/model/";
        let model, webcam, ctx, labelContainer, maxPredictions;

        async function init() { //model을 불러오고, 카메라를 설정해 준다음 loop를 돈다. 
            const modelURL = URL + "model.json"; //teachable machine에서 학습시킨 json 파일
            const metadataURL = URL + "metadata.json"; //teachable machine에서 학습시킨 json 파일

            // 모델 및 메타 데이터로드
            // 파일 선택기의 파일을 지원하려면 API의 tmImage.loadFromFiles()을 참조
            // 참고 : 포즈 라이브러리는 창에 tmPose 개체를 추가합니다 (window.tmPose)
            model = await tmPose.load(modelURL, metadataURL);
            maxPredictions = model.getTotalClasses();

            // 웹캠 설정을위한 편의 기능(const -> 상수)
           /*  const webWidth = 800; // 웹캠 사이즈 가로 
            const webHeight = 800; //웹캠 사이즈 세로 */
            const size = 800;
            const flip = true; // 웹캠을 뒤집을 지 여부
            webcam = new tmPose.Webcam(size, size, flip); // width, height, flip
            await webcam.setup(); // 웹캠에 대한 액세스 요청
            await webcam.play(); //웹캠 재생
            window.requestAnimationFrame(loop);

            // DOM에 요소 추가 / 가져 오기
            const canvas = document.getElementById("canvas");
            canvas.width = size; 
            canvas.height = size;
            ctx = canvas.getContext("2d");
            labelContainer = document.getElementById("label-container");
            for (let i = 0; i < maxPredictions; i++) { // and class labels
                labelContainer.appendChild(document.createElement("div"));
            }
        }

        async function loop(timestamp) { //계속 자기 자신을 호출하면서 반복된
            webcam.update(); // 웹캠 프레임 업데이트
            await predict(); 
            window.requestAnimationFrame(loop);
        }
        var progress = 327
        var status = "stand" //서 있는 상태
        var count = 0 //운동 카운트
        async function predict() {
            //1번 model을 불러오고
            //2번 model의 결과를 뽑아서 prediction classname, classname하고
            //3번 prediction probablity 가능성을 문장으로 만들어서 html에 넣어주는 역할을 함

            // 예측 # 1 : Posenet을 통해 입력 실행
            // EstimatePose는 이미지, 비디오 또는 캔버스 HTML 요소를 가져올 수 있습니다.
            const { pose, posenetOutput } = await model.estimatePose(webcam.canvas);
            // 예측 2 : 학습 가능한 기계 분류 모델을 통해 입력 실행
            const prediction = await model.predict(posenetOutput);
            //stand:0  squat:1  bent:2
            if (prediction[0].probability.toFixed(2) > 0.90) {
                if (status == "squat") {
                    count++ //카운트 증가
                    progress = progress-32.7
                    if(progress <= 0) {
                        progress = 327-32.7
                    }
                    $('.progress').css('stroke-dashoffset', progress);
                    $('#counter').html(count);
                }
                status = "stand"
            } else if (prediction[1].probability.toFixed(2) == 1.00) {
                status = "squat" 
            } else if (prediction[2].probability.toFixed(2) == 1.00) {
                if (status == "squat" || status == "stand") {
                }
                status = "bent" //우리는 wrong을 사용하고 있음.
            }
            //squat, 0~1까지의 확률
            /* for (let i = 0; i < maxPredictions; i++) { //3번
                const classPrediction =
                    prediction[i].className + ": " + prediction[i].probability.toFixed(2);
                labelContainer.childNodes[i].innerHTML = classPrediction;
            } */
            // 포즈 그리기
            drawPose(pose);
        }

        function drawPose(pose) {
            if (webcam.canvas) {
                ctx.drawImage(webcam.canvas, 0, 0);
                // 키포인트와 스켈레톤 그리기, 지우면 키 포인트 사라짐
               /*  if (pose) {
                    const minPartConfidence = 0.5;
                    tmPose.drawKeypoints(pose.keypoints, minPartConfidence, ctx);
                   	tmPose.drawSkeleton(pose.keypoints, minPartConfidence, ctx);
                } */
            }
        }
        
        var ring = document.getElementsByTagName('path')[0];
        var range = document.getElementsByTagName('input')[0];
        var text = document.getElementsByTagName('text')[0];
        var toRadians = Math.PI / 180;
        var r = 100;

        function draw() {
          // Update the wheel giving to it a value in degrees,
          // getted from the percentage of the input value
          // a.k.a. (value * 360) / 100
          var degrees = range.value * 3.5999;
          // Convert the degrees value to radians
          var rad = degrees * toRadians;
          // Determine X and cut to 2 decimals
          var x = (Math.sin(rad) * r).toFixed(2);
          // Determine Y and cut to 2 decimals
          var y = -(Math.cos(rad) * r).toFixed(2);
          // The another half ring. Same as (deg > 180) ? 1 : 0
          var lenghty = Number(degrees > 180);
          // Moveto + Arcto
          var descriptions = ['M', 0, 0, 'v', -r, 'A', r, r, 1, lenghty, 1, x, y, 'z'];
          // Apply changes to the path
          ring.setAttribute('d', descriptions.join(' '));
          // Update the numeric display
          text.textContent = range.value;
        }

        // Translate the center axis to a half of total size
        ring.setAttribute('transform', 'translate(' + r + ', ' + r + ')');
        // Bind the change event to the input
        range.addEventListener('input', draw);
        // Force to init the first time
        draw();
    </script>
	<%@include file="/WEB-INF/views/footer.jsp"%>
</body>
</html>