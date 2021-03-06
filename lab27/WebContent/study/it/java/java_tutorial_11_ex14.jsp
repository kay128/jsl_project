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
 * Radio Button
 */
package frame.sample;

import java.awt.Frame;
import java.awt.Toolkit;
import java.awt.Color;
import java.awt.Dimension;
import java.awt.Container;
import java.awt.FlowLayout;

import javax.swing.JRadioButton;
import javax.swing.JFrame;
import javax.swing.ButtonGroup;
import javax.swing.JCheckBox;

class Exam_14_Sub extends JFrame {
	// 멤버 필드
	Container c;

	// JCheckBox apple = new JCheckBox("사과");
	// JCheckBox pear = new JCheckBox("배", true);
	// JCheckBox cherry = new JCheckBox("체리");
	//
	JRadioButton apple = new JRadioButton("사과");
	JRadioButton pear = new JRadioButton("배", true);
	JRadioButton cherry = new JRadioButton("체리");

	ButtonGroup bg = new ButtonGroup();

	// private FlowLayout fl = new FlowLayout();

	// 생성자 메서드
	public Exam_14_Sub() {
		// 제목 설정
		this.setTitle("자바 프레임");
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
		// 사용중인 프레임을 컨텐트팬에 등록
		c = getContentPane();

		c.setLayout(new FlowLayout());

		// Frame 배경을 설정
		c.setBackground(Color.darkGray);

		bg.add(apple);
		bg.add(pear);
		bg.add(cherry);

		c.add(apple);
		c.add(pear);
		c.add(cherry);
	}

	public void start() {// Event 처리를 목적으로 구현하는 메서드

	}
	// 중첩   메서드

}

public class Exam_14 {

	public static void main(String[] args) {
		Exam_14_Sub ex = new Exam_14_Sub();

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




