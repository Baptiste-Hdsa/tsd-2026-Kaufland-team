package com.tsd2026.kaufland;

public class Rating {

    public char determineResultGrade (int points) {
        if (points < 0){
            throw new IllegalArgumentException("Points must be between 0 and 100");
        }
        else if (points < 60) {
            return 'F';
        }
        else if (points < 70) {
            return 'D';
        }
        else if (points < 80) {
            return 'C';
        }
        else if (points < 90) {
            return 'B';
        }
        else  {
            return 'A';
        }
    }

}