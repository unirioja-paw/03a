package es.unirioja.jsp;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

public class PageResolver {

    public String getIncludingPage() {
        String filename = String.format(
                "randompage_%d.jsp",
                randomIntBetween(0, 3)
        );
        return filename;
    }

    private int randomIntBetween(int min, int max) {
        Random r = new Random();
        return r.nextInt((max - min) + 1) + min;
    }

    public Date getApocalypseDay() {
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
        Date d;
        try {
            d = sdf.parse("2053-06-27");
        } catch (ParseException ex) {
            // TODO: log
            return null;
        }
        return d;
    }

    public boolean isApocalypseDay() throws ParseException {
        Date date1 = new Date();
        Date date2 = getApocalypseDay();
        if (date2 == null) {
            return false;
        }
        return (date1.compareTo(date2) == 0);
    }
}
