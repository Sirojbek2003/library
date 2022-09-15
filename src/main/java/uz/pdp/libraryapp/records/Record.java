package uz.pdp.libraryapp.records;

import uz.pdp.libraryapp.user.User;

import java.util.List;

public class Record {
    private Integer id;
    private boolean is_returned;
    private Integer dateTime;
    private List<User> user_id;
}
