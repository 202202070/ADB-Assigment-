Optimized Query Plan
Step 1:Selections
σ<sub>S.Major = 'Computer Science'</sub>(STUDENT):
Filter students first to only keep those with the major 'Computer Science', reducing the size.

σ<sub>C.Credits ≥ 3</sub>(COURSE):
Filter courses to only include those with at least 3 credits minimizing unnecessary data during joins.

Step 2: Change Cartesian Products with Joins
(σ STUDENT ⋈<sub>S.StudentID = E.StudentID</sub> ENROLLMENT):
Instead of pairing every student with every enrollment join them directly based on  StudentID.

(Result ⋈<sub>C.CourseID = E.CourseID</sub> σ COURSE):
Join the previous result with the filtered courses on CourseID, again avoiding huge intermediate tables.

Step 3: Apply Projection
π<sub>S.Name, C.Title, E.Grade</sub> (Final Result):
After  filtering and joining,we project only the required columns (Name, Title, Grade) for the final output.