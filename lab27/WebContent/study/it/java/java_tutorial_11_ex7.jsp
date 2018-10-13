<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../../header.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC >
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>Insert title here</title>		
	</head>
	<body>
	
		<div id="main-wrap" class="row" style="clear:both;"> <!-- wrap -->

		<!-- 스터디 목차 ================================================================== -->
			<div id="study-side-nav">
				<c:import url="/study/it/java/index.jsp"/>
			</div>	<!--  end -->
			
			
		<!-- 본문 ============================================================================= -->
			<div id="wrap">
			<div class="row">
			<pre>
/*
 * GirdBagLayout()
 */
package frame.sample;

import java.awt.Frame;
import java.awt.Toolkit;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Button;
import java.awt.GridBagLayout;
import java.awt.GridBagConstraints;

class Exam_07_Sub extends Frame {
	// 멤버 필드
	private Button btn1 = new Button("AAA");
	private Button btn2 = new Button("BBB");
	private Button btn3 = new Button("CCC");
	private Button btn4 = new Button("DDD");
	private Button btn5 = new Button("EEE");
	private Button btn6 = new Button("FFF");
	private Button btn7 = new Button("GGG");

	private GridBagLayout gb = new GridBagLayout();
	private GridBagConstraints gc = new GridBagConstraints();

	// 생성자 메서드
	public Exam_07_Sub() {
		// 제목 설정
		this.setTitle("GridBagLayout");
		// Frame 크기 설정
		setSize(500, 300);

		// 화면을 구성(디자인)
		init();

		// Event나 Thread처리
		start();

		// 화면의 정중앙에 배치
		Dimension screen = Toolkit.getDefaultToolkit().getScreenSize();
		Dimension frm = getSize();

		int x = (int) (screen.getWidth() / 2 - frm.getWidth() / 2);
		int y = (int) (screen.getHeight() / 2 - frm.getHeight() / 2);
		setLocation(x, y);

		// Frame 크기 재설정 방지
		this.setResizable(false);

		// Frame 화면에 표시
		setVisible(true);

	}

	// 멤버 메서드
	public void init() {// Frame 화면을 디자인할 목적으로 구현하는 메서드
		// Frame 배경을 설정
		this.setBackground(Color.darkGray);

		// 배치 관리자 설정
		setLayout(gb);

		gc.gridx = 0;
		gc.gridy = 0;
		gb.setConstraints(btn1, gc);
		add(btn1);

		gc.gridx = 1;
		gc.gridy = 1;
		gb.setConstraints(btn2, gc);
		add(btn2);

		gc.gridx = 2;
		gc.gridy = 2;
		gb.setConstraints(btn3, gc);
		add(btn3);

		gc.gridx = 3;
		gc.gridy = 2;
		gb.setConstraints(btn4, gc);
		add(btn4);

		gc.gridx = 2;
		gc.gridy = 0;
		gb.setConstraints(btn5, gc);
		add(btn5);

	}

	public void start() {// Event 처리를 목적으로 구현하는 메서드

	}
	// 중첨 메서드

}

public class Exam_07 {

	public static void main(String[] args) {
		Exam_07_Sub ex = new Exam_07_Sub();

	}

}

			</pre>
			</div>
				
		<!-- QnA =========================================================================== -->
				<c:import url="/study/qna.jsp"/>
				
			</div>	<!-- 본문 end -->
			
		</div> <!-- wrap end -->
		
		<!-- 글로벌 네비게이션 -->
		<c:import url="/nav/global_nav.jsp"/>
		<c:import url="/footer/footer.jsp"/>
	</body>
</html>




