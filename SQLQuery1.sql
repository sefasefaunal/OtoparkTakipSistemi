use DBOtoparkTakipSistemi

ALTER TABLE Arac DROP CONSTRAINT CK__Arac__Durum__49C3F6B7;

ALTER TABLE Arac ADD CONSTRAINT CK_Durum CHECK (Durum IN ('��eride', '��kt�'));

INSERT INTO Arac(plaka, markamodel, giristarihi, cikistarihi, durum)--yeni de�erler girdim--
VALUES
('34ABC123', 'Renault Clio', '2025-07-03 08:30:00', NULL, '��eride'),
('06XYZ789', 'Ford Focus', '2025-07-02 15:00:00', '2025-07-02 18:45:00', '��kt�'),
('35DEF456', 'Toyota Corolla', '2025-07-03 09:15:00', NULL, '��eride');
INSERT INTO Arac (plaka, markamodel, giristarihi, cikistarihi, durum)
VALUES ('34ZZZ789', 'Hyundai i20', '2025-07-01 12:00:00', '2025-07-01 15:30:00', '��kt�');
INSERT INTO Arac (plaka, markamodel, giristarihi, cikistarihi, durum)
VALUES ('01ABC111', 'BMW 320i', '2025-07-03 10:45:00', NULL, '��eride');

sp_help Arac;--alabilce�i de�erleri sorgulad�m--


ALTER TABLE Arac DROP CONSTRAINT CK_Durum;--k�s�tlay�c� kulland�m--

ALTER TABLE Arac ADD CONSTRAINT CK_Durum CHECK (Durum IN ('��eride', '��kt�'));--k�s�tlay�c�da uzunlu�u fazla gelen kelimeyi k�saltt�m--

