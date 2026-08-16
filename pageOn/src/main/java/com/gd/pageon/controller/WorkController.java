package com.gd.pageon.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.gd.pageon.service.WorkService;
import com.gd.pageon.util.PagingUtil;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@RequestMapping("/work")
@Controller
public class WorkController {
	
	private final WorkService workService;
	private final PagingUtil pagingUtil;
}
