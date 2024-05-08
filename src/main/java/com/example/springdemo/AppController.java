package com.example.springdemo;

import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.http.ResponseEntity;

@RestController
public class AppController {


  @GetMapping("/")
  public ResponseEntity<String> greeting() {
    return ResponseEntity.ok("greeting from server...");
  }

}