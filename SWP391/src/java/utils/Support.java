/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package utils;

/**
 *
 * @author Nhat Anh
 */
public class Support {
    
    public static String printArray(String[] array){
        String result="";
        for(String element : array){
            result = result + "'"+element+"'" + ", ";
        }
        return result.substring(0, result.length()-2);
    }
    
    public static String printArray(int[] array){
        String result="";
        for(int element : array){
            result = result + element + ", ";
        }
        return result.substring(0, result.length()-2);
    }
}
