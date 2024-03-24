<%@ Page Title="" Language="C#" MasterPageFile="~/MainPage.Master" AutoEventWireup="true" CodeBehind="about.aspx.cs" Inherits="DB_Project.about" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link rel="stylesheet" href="css/about.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
	

    <div class="container" align="center" style="margin-top: 100px;">
        <div class="d-md-flex">

                <div class="col my-auto">
                    <h1 class="" style=" color: #ffffff ;font-weight: 600; font-size: 600%;">About.</h1>
                    <h5 class="" style=" color: #ffffff ;">Learn more about the project contributors.</h5>
                </div>
            <svg width="512" height="512" viewBox="0 0 512 512" fill="none" overflow="hidden" xmlns="http://www.w3.org/2000/svg">
<use href="#cube" x="128" y="320" stroke-width="2"  opacity="0.3">
	<animate attributeName="stroke" dur="6s" repeatCount="indefinite"
			 values="#FF9AA2;#FFB7B2;#FFDAC1;#E2F0CB;#B5EAD7;#C7CEEA;#FF9AA2"/>
</use>

<rect width="512" height="512" y="384" fill="url(#fade)"/>
<use href="#cube" x="128" y="128" stroke-width="2">
	<animate attributeName="stroke" dur="6s" repeatCount="indefinite"
			 values="#FF9AA2;#FFB7B2;#FFDAC1;#E2F0CB;#B5EAD7;#C7CEEA;#FF9AA2"/>
</use>

<defs>
	<!-- EVERYTHING TOGETHER --> 
 	<g id="cube">
		<use href="#cube_outline" stroke-linejoin="round" stroke-width="16" fill="url(#stars)"/>
		<use href="#cube_base" stroke-width=".5"/>
		<use href="#cube_outline" stroke-linejoin="round" stroke-width="6" stroke="#141417"/>
	</g>	

	<g id="cube_outline">
		<path>
			<animate attributeName="d" dur="1.5s" repeatCount="indefinite" calcMode="spline"
			keyTimes="0;0.5;0.5;1"
			keySplines="0.8 0.2 0.6 0.9; 
						0.8 0.2 0.6 0.9; 
						0.8 0.2 0.6 0.9"
			values="M10 64 L128 0 L246 64 L246 192 L128 256 L10 192Z;
					M40 20 L216 20 L216 108 L216 236 L40 236 L40 172Z;
					M216 20 L40 20 L40 108 L40 236 L216 236 L216 172Z;
					M246 64 L128 0 L10 64 L10 192 L128 256 L246 192Z"/>
		</path>
	</g>

	<g id="cube_base">
		<path fill="#fff1"> <!-- TOP SIDE -->
		<animate attributeName="d" dur="1.5s" repeatCount="indefinite" calcMode="spline"
			keyTimes="0;0.5;1"
			keySplines="0.8 0.2 0.6 0.9; 
						0.8 0.2 0.6 0.9"
			values="M10 64 L128 0 L246 64 L128 128Z;
					M40 20 L216 20 L216 108 L40 108Z;
					M128 0 L246 64 L128 128 L10 64Z"/>
		</path>
		<path> <!-- LEFT SIDE -->
		<animate attributeName="d" dur="1.5s" repeatCount="indefinite" calcMode="spline"
			keyTimes="0;0.5;0.5;1"
			keySplines="0.8 0.2 0.6 0.9; 
						0.8 0.2 0.6 0.9; 
						0.8 0.2 0.6 0.9"
			values="M10 64 L128 128 L128 256 L10 192Z;
					M40 20 L40 108 L40 236 L40 172Z;
					M216 20 L216 108 L216 236 L216 172Z;
					M246 64 L128 128 L128 256 L246 192Z"/>
		<animate attributeName="fill" dur="1.5s" repeatCount="indefinite" keyTimes="0;0.5;0.5;1"
			values="#fff0;#fff0;#fff2;#fff2"/>
		</path>
		<path fill="#407080"> <!-- LEFT SIDE -->
		<animate attributeName="d" dur="1.5s" repeatCount="indefinite" calcMode="spline"
			keyTimes="0;0.5;1"
			keySplines="0.8 0.2 0.6 0.9; 
						0.8 0.2 0.6 0.9"
			values="M246 64 L128 128 L128 256 L246 192Z;
					M216 108 L40 108 L40 236 L216 236Z;
					M128 128 L10 64 L10 192 L128 256Z"/>
			<animate attributeName="fill" dur="1.5s" repeatCount="indefinite" keyTimes="0;0.5;1"
				values="#fff2;#fff1;#fff0"/>
		</path>
	</g>
	<linearGradient id="fade" gradientTransform="rotate(90)">
    	<stop offset="0" stop-color="#14141700"/>
    	<stop offset="0.25" stop-color="#141417ff"/>
    </linearGradient>
	<linearGradient id="sky" gradientTransform="rotate(90)">
    	<stop offset="0.5" stop-color="#141417"/>
    	<stop offset="1" stop-color="#40354a"/>
    </linearGradient>
  
	<!-- STARS PATTERN --> 
	<pattern id="stars" x="0" y="0" width="50%" height="50%" patternUnits="userSpaceOnUse" patternContentUnits="userSpaceOnUse">
		<rect width="256" height="256" fill="url(#sky)"/>
		<use href="#star01" x="24" y="32"  fill="white"/>
		<use href="#star01" x="64" y="96"  fill="#ad9dcb" transform="rotate(90 80 112)"/>
		<use href="#star01" x="224" y="102"  fill="#ad9dcb"/>
		<use href="#star01" x="192" y="112"  fill="#E0E8EA" transform="rotate(90 80 112)"/>
		<use href="#star02" x="16" y="64"  fill="#ad9dcb"/>
		<use href="#star03" x="96" y="16"  fill="#E0E8EA"/>
		<use href="#star04" x="64" y="64"  fill="white"/>
		<use href="#star04" x="8" y="16"  fill="#ad9dcb"/>
		<use href="#star04" x="110" y="96"  fill="#E0E8EA"/>
		<use href="#star02" x="160" y="24"  fill="#ad9dcb"/>
		<use href="#star03" x="196" y="60"  fill="#E0E8EA"/>
		<use href="#star04" x="64" y="212"  fill="white"/>
		<use href="#star04" x="218" y="216"  fill="#ad9dcb"/>
		<use href="#star03" x="228" y="220"  fill="#E0E8EA"/>
		<use href="#star02" x="140" y="128"  fill="#ad9dcb"/>
		<use href="#star03" x="24" y="140"  fill="#E0E8EA"/>
		<use href="#star04" x="95" y="160"  fill="white"/>
		<use href="#star04" x="180" y="128"  fill="#ad9dcb"/>
		<use href="#star03" x="200" y="136"  fill="#E0E8EA"/>
		<use href="#star10" x="120" y="120"  stroke="#E0E8EA"/>
		<use href="#star11" x="48" y="64"  stroke="#ad9dcb"/>
	</pattern>
	<path id="star01" transform="scale(0.5)">
		<animate attributeName="d" dur="3s" repeatCount="indefinite" calcMode="spline"
			keyTimes="0;0.5;1" keySplines="0.8 0.2 0.6 0.9; 0.8 0.2 0.6 0.9"
			values="M16 0 Q16 16 24 16 Q16 16 16 32 Q16 16 8 16 Q16 16 16 0Z;
					M16 8 Q16 16 32 16 Q16 16 16 24 Q16 16 0 16 Q16 16 16 8Z;
					M16 0 Q16 16 24 16 Q16 16 16 32 Q16 16 8 16 Q16 16 16 0Z"/>
	</path>
	<circle id="star02">
		<animate attributeName="r" dur="3s" repeatCount="indefinite" calcMode="spline"
			keyTimes="0;0.5;1" keySplines="0.8 0.2 0.6 0.9; 0.8 0.2 0.6 0.9"
			values="0;2;0"/>
	</circle>
	<circle id="star03">
		<animate attributeName="r" dur="6s" repeatCount="indefinite" calcMode="spline"
			keyTimes="0;0.5;1" keySplines="0.8 0.2 0.6 0.9; 0.8 0.2 0.6 0.9"
			values="3;1;3"/>
	</circle>
	<circle id="star04" r="1"/>

	<path id="star10" stroke-width="2">
		<animate attributeName="d" dur="5s" repeatCount="indefinite" 
			keyTimes="0;0.90;0.97;1"
			keySplines="0 0.4 1 0.2; 0 0.4 1 0.2; 0 0.4 1 0.2"
			values="M64 0 L64 0Z; M64 0 L64 0Z; M48 12 L0 48Z; M0 48 L0 48Z"/>
		<animate attributeName="opacity" dur="5s" repeatCount="indefinite"
			keyTimes="0;0.90;0.97;1"
			values="1; 1; 0.6; 0"/>
	</path>
	<path id="star11" stroke-width="3">
		<animate attributeName="d" dur="6s" repeatCount="indefinite" delay="3s"
			keyTimes="0;0.90;0.95;1"
			keySplines="0 0.4 1 0.2; 0 0.4 1 0.2; 0 0.4 1 0.2"
			values="M64 0 L64 0Z; M64 0 L64 0Z; M48 12 L0 48Z; M0 48 L0 48Z"/>
		<animate attributeName="opacity" dur="6s" repeatCount="indefinite" delay="3s"
			keyTimes="0;0.90;0.95;1"
			values="1; 1; 0.6; 0"/>
	</path>
</defs>
</svg>
    
        </div>
    </div>
   
     <div class="container">
        <hr class="hr-light" style="background-color: #ffffff;height: 3px;margin-bottom: 50px; margin-top: 100px;">
    </div>

     <section>
    <div class="container" style="background-color: #212529; background-image:url(pictures/black-bg1.jpg); border-radius: 10px;">
        <div class="d-lg-flex">

            <div class="col my-auto" >
                <h1 class="text-light" align="center" style=" font-weight: 600;">Shahmir Yousaf.</h1>
              <br>
                <p class =" mt-3 my-auto" style="letter-spacing: 0.5px; margin-left:13%;color: #ffffff; font-weight: 500; text-align: justify;">
                    I am an individual of unwavering determination who has invested substantial effort and unwavering resolve into the creation of this website,
					embarking on a journey of self-improvement that has yielded a plethora of newfound wisdom. My fascination lies in the captivating realm of artificial intelligence,
					as I am enthralled by its limitless potential to reshape our world. Computers and technology have always intrigued me, driving me to stay at the forefront of advancements.
					With unwavering commitment to excellence, I aspire to harness AI and technology to create an innovative and transformative future. This website reflects my dedication and passion, and I am thrilled to share my expertise with you.
                </p>
            </div>
            <div class="col my-auto" align="center">
                <img style="margin-left:32%;" src="pictures/sy.jpg" height ="15%" width="70%">
            </div>
        </div>
    </div>

         <div class="container">
        <hr class="hr-light" style="background-color: #ffffff;height: 3px;margin-bottom: 50px; margin-top: 100px;">
    </div>

    <div class="container">
        <hr class="hr-dark" style="margin-top: 70px; margin-bottom: 70px;">
    </div>
         </section>

     <section>
    <div class="container" style="background-color:#212529 ;background-image:url(pictures/bg-2.jpg);border-radius: 10px;">
        <div class="d-lg-flex">
             <div class="col my-auto" align="left">
                <img style="margin-left:-2%;" src="pictures/murtaza.jpg" height ="0%" width="70%">
            </div>
            <div class="col my-auto">
                <h1 class="text-light" align="center" style="margin-right:14%; font-weight: 600;">Murtaza Ahmad.</h1><br >
              
                <p class =" mt-3 my-auto" style="letter-spacing: 0.5px; margin-right:14%;color: #ffffff; font-weight: 500; text-align: justify;">
                    This website has provided me with an invaluable platform to embark on a multitude of novel ventures, allowing me to satiate my insatiable 
					thirst for exploration and accomplishment.My inherent zeal for embracing new horizons and pushing boundaries has been a driving force in my
					endeavors. Eager to delve into uncharted territories, I revel in the challenges that arise and relish the opportunity to conquer them. With an 
					unwavering commitment to execution, I take immense satisfaction in transforming ideas into tangible results. Continually seeking fresh experiences, 
					I thrive on the exhilaration that arises from venturing beyond the familiar. This website is a testament to my unwavering dedication to growth and achievement, and I am exhilarated to channel my enthusiasm and expertise to surpass your expectations.
                </p>
            </div>
           
        </div>
    </div>

    <div class="container">
        <hr class="hr-dark" style="margin-top: 70px; margin-bottom: 70px;">
    </div>
         </section>

</asp:Content>
