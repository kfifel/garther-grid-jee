package com.youcode.garthergridjee.exception;

public class EmailAlreadyExistException extends Exception {
    public EmailAlreadyExistException() {
        super("Email already exists");
    }

    public EmailAlreadyExistException(String message) {
        super(message);
    }
}