package com.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.SequenceGenerator;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.security.Timestamp;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Entity(name = "diet")
public class Diet {
    @Id
    @SequenceGenerator(name = "dietSeq", sequenceName = "diet_id_seq", allocationSize = 1)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "dietSeq")
    private Long id;

    @Column(name = "start_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Timestamp startTime;

    @Column(name = "end_time")
    @Temporal(TemporalType.TIMESTAMP)
    private Timestamp endTime;


    private Long userId;
}
