package gearrental;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import java.util.List;

public class JSON {

    public static String carToJSON(List<Rental> p){
        ObjectMapper mapper = new ObjectMapper();
        String s = "";

        try {
            s = mapper.writeValueAsString(p);
        } catch (JsonProcessingException e) {
            System.err.println(e.toString());
        }

        return s;
    }

}
