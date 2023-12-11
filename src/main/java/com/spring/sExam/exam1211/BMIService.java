package com.spring.sExam.exam1211;

public class BMIService {
	public void printline() {
		System.out.println("==============================");
	}
	
	public void printTitle() {
		System.out.println("성명\t키\t몸무게\t결과");
	}
	
	public BMIVO calc(BMIVO vo) {
		double height = vo.getHeight() / 100.0;
		double tot = vo.getWeight() / (height*height);
		
		String avg = "";
		if(tot < 18.5) {
			avg="저체중";
		} else if(tot <= 23) {
			avg = "표준";
		} else if(tot <= 25) {
			avg = "과체중";
		} else if(tot > 25) {
			avg = "비만";
		}
		
		vo.setAvg(avg);
		return vo;
	}
	
	public void BMIprint(BMIVO vo) {
		System.out.println(vo.getName()+"\t"+vo.getHeight()+"\t"+vo.getWeight()+"\t"+vo.getAvg());
	}
}
