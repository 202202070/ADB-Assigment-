## Initial Relational Algebra Expression (Before Optimization)

π<sub>S.Name, C.Title, E.Grade</sub>(
&nbsp;&nbsp;σ<sub>
S.StudentID = E.StudentID ∧ C.CourseID = E.CourseID ∧ S.Major = 'Computer Science' ∧ C.Credits ≥ 3
</sub>(
STUDENT × COURSE × ENROLLMENT
)
)
