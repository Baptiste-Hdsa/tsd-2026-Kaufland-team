package com.tsd2026.kaufland;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertThrows;

public class RatingTest{

    @Test
    public void DetermineResultGradeShouldReturnAFor100Points() {
        Rating rating = new Rating();
        char result = rating.determineResultGrade(100);
        assertEquals('A', result);
    }

    @Test
    public void DetermineResultGradeShouldReturnAFor90Points() {
        Rating rating = new Rating();
        char result = rating.determineResultGrade(90);
        assertEquals('A', result);
    }

    @Test
    public void DetermineResultGradeShouldReturnBFor89Points() {
        Rating rating = new Rating();
        char result = rating.determineResultGrade(89);
        assertEquals('B', result);
    }

    @Test
    public void DetermineResultGradeShouldReturnBFor80Points() {
        Rating rating = new Rating();
        char result = rating.determineResultGrade(80);
        assertEquals('B', result);
    }

    @Test
    public void DetermineResultGradeShouldReturnCFor79Points() {
        Rating rating = new Rating();
        char result = rating.determineResultGrade(79);
        assertEquals('C', result);
    }

    @Test
    public void DetermineResultGradeShouldReturnCFor70Points() {
        Rating rating = new Rating();
        char result = rating.determineResultGrade(70);
        assertEquals('C', result);
    }

    @Test
    public void DetermineResultGradeShouldReturnDFor69Points() {
        Rating rating = new Rating();
        char result = rating.determineResultGrade(69);
        assertEquals('D', result);
    }

    @Test
    public void DetermineResultGradeShouldReturnDFor60Points() {
        Rating rating = new Rating();
        char result = rating.determineResultGrade(60);
        assertEquals('D', result);
    }

    @Test
    public void DetermineResultGradeShouldReturnFFor59Points() {
        Rating rating = new Rating();
        char result = rating.determineResultGrade(59);
        assertEquals('F', result);
    }

    @Test
    public void DetermineResultGradeShouldReturnFFor0Points() {
        Rating rating = new Rating();
        char result = rating.determineResultGrade(0);
        assertEquals('F', result);
    }

    @Test
    void DetermineResultGradeShouldThrowExceptionForNegativePoints() {
        Rating rating = new Rating();
        assertThrows(IllegalArgumentException.class, () -> rating.determineResultGrade(-1));
    }

    @Test
    void DetermineResultGradeShouldThrowExceptionForMoreThan100Points() {
        Rating rating = new Rating();
        assertThrows(IllegalArgumentException.class, () -> rating.determineResultGrade(101));
    }

}
