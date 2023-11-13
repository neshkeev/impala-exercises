package com.github.neshkeev.impala.udf;

import org.apache.hadoop.hive.ql.exec.Description;
import org.apache.hadoop.hive.ql.exec.UDF;
import org.apache.hadoop.io.Text;

@Description(name = "hello", value = "Appends a greeting message to a string")
public class HelloUDF extends UDF {
    public Text evaluate(Text what) {
        if (what == null) {
            return null;
        }
        return new Text("Hello, " + what.toString());
    }
}
