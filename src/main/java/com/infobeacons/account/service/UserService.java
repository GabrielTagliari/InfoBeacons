package com.infobeacons.account.service;

import com.infobeacons.account.model.User;

public interface UserService {
    void save(User user);

    User findByUsername(String username);
}
