use DBOtoparkTakipSistemi

ALTER TABLE Arac DROP CONSTRAINT CK__Arac__Durum__49C3F6B7;

ALTER TABLE Arac ADD CONSTRAINT CK_Durum CHECK (Durum IN ('Ýçeride', 'Çýktý'));

INSERT INTO Arac(plaka, markamodel, giristarihi, cikistarihi, durum)--yeni deðerler girdim--
VALUES
('34ABC123', 'Renault Clio', '2025-07-03 08:30:00', NULL, 'Ýçeride'),
('06XYZ789', 'Ford Focus', '2025-07-02 15:00:00', '2025-07-02 18:45:00', 'Çýktý'),
('35DEF456', 'Toyota Corolla', '2025-07-03 09:15:00', NULL, 'Ýçeride');
INSERT INTO Arac (plaka, markamodel, giristarihi, cikistarihi, durum)
VALUES ('34ZZZ789', 'Hyundai i20', '2025-07-01 12:00:00', '2025-07-01 15:30:00', 'Çýktý');
INSERT INTO Arac (plaka, markamodel, giristarihi, cikistarihi, durum)
VALUES ('01ABC111', 'BMW 320i', '2025-07-03 10:45:00', NULL, 'Ýçeride');

sp_help Arac;--alabilceði deðerleri sorguladým--


ALTER TABLE Arac DROP CONSTRAINT CK_Durum;--kýsýtlayýcý kullandým--

ALTER TABLE Arac ADD CONSTRAINT CK_Durum CHECK (Durum IN ('Ýçeride', 'Çýktý'));--kýsýtlayýcýda uzunluðu fazla gelen kelimeyi kýsalttým--

