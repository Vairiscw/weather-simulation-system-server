package com.example.wssserver.repositories;

import com.example.wssserver.data.environment.voice.Voice;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VoiceRepository extends JpaRepository<Voice, Long> {
}
