package com.gd.pageon.service;

import org.springframework.stereotype.Service;

import com.gd.pageon.dao.WorkDao;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Service
public class WorkServiceImpl implements WorkService {
	
	private final WorkDao workDao;
}
