package com.douzone.guestbook.dao.test;

import java.util.List;


import com.douzone.guestbook.dao.GuestBookDao;
import com.douzone.guestbook.vo.GuestBookVo;

public class GuestBookDaoTest {

	public static void main(String[] args) {
		testinsert();
		findAll();
		testdelete();
		findAll();
	}

	private static void testdelete() {
		long no = 1;
		// new GuestBookDao().delete(1);
		
	}

	private static void testinsert() {
		GuestBookVo vo = new GuestBookVo();
		vo.setName("홍길동");
		vo.setPassword("1234");
		vo.setMessage("가입인사드립니다.");
		
		new GuestBookDao().insert(vo);
		
	}

	private static void findAll() {
		List<GuestBookVo> list = new GuestBookDao().findAll();
		for(GuestBookVo vo : list) {
			System.out.println(vo);
		}
	}

}
