package com.example.ServletDemo.service;

import com.example.ServletDemo.model.Student;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class StudentServiceImpl implements StudentService {
    private static Map<String, Student> studentMap;

    static {
        studentMap = new HashMap();
        SimpleDateFormat format = new SimpleDateFormat("dd/MM/yyyy");
        try {
            studentMap.put("SV001", new Student("SV001", "Lan", format.parse("10/02/1995"), false));
            studentMap.put("SV002", new Student("SV002", "Hoa", format.parse("02/09/1998"), false));
            studentMap.put("SV003", new Student("SV003", "Linh", format.parse("25/10/1989"), true));
            studentMap.put("SV004", new Student("SV004", "Trung", format.parse("01/12/2000"), true));
            studentMap.put("SV005", new Student("SV005", "Quy", format.parse("31/05/1997"), true));
        } catch (ParseException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void create(Student student) {
        if(!studentMap.containsKey(student.getId())) {
            studentMap.put(student.getId(), student);
        }
    }

    @Override
    public void update(Student student) {
        if(studentMap.containsKey(student.getId())) {
            studentMap.put(student.getId(), student);
        }
    }

    @Override
    public void delete(String id) {
        if(studentMap.containsKey(id)) {
            studentMap.remove(id);
        }
    }

    @Override
    public List<Student> findAll() {
        return new ArrayList<>(studentMap.values());
    }

    @Override
    public Student findById(String id) {
        if (studentMap.containsKey(id)) {
            return studentMap.get(id);
        } else {
            return null;
        }
    }
}
