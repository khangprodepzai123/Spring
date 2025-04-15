package vn.hoidanit.laptopshop.service;

import java.util.List;
import java.util.stream.Collectors;
import java.util.Comparator;
import org.springframework.stereotype.Service;

import vn.hoidanit.laptopshop.domain.User;
import vn.hoidanit.laptopshop.repository.UserRepository;

@Service
public class RankService {
    private final UserRepository userRepository;

    public RankService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> getAllUsersByScore() {
        List<User> users = this.userRepository.findAll();
        return users.stream()
                .sorted(Comparator.comparingInt(User::getSobaicode).reversed())
                .collect(Collectors.toList());
    }

}
