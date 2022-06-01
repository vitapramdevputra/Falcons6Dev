Candidates.CompanyName = 'softinnovas';
Candidates.printCandidateInfoSt();
Candidates c1 = new Candidates();
c1.Name = 'Jerry';
c1.Gender = 'Male';
c1.printCandidate();

Candidates c2 = new Candidates();
c2.Name = 'Elaine';
c2.Gender = 'Female';
c2.printCandidate();

Candidates c3 = new Candidates();
c3.Name = 'George';
c3.Gender = 'Male';
c3.printCandidate();

Candidates.CompanyName = 'SOFTINNOVAS INC.';
c1.printCandidate();
c2.printCandidate();
c3.printCandidate();

Candidates.CompanyName = 'SALESFORCE INC.';
c1.printCandidate();
c2.printCandidate();
c3.printCandidate();


