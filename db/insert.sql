INSERT INTO profile_info (id, my_name, my_role, availability_text, hero_bio, about_title, about_bio, years_exp, projects_done, cv_url)
VALUES (
    1, 
    'Lorenzo Feula', 
    'Junior Developer', 
    'Available for work', 
    'Computer Science student and Junior Developer passionate about building modern web applications and interactive experiences. Focused on clean code, responsive design, and continuous learning.', 
    'Turning Ideas Into Digital Reality', 
    'I am a Computer Science student at the University of L\'Aquila with a strong interest in both web development and game programming. From crafting responsive user interfaces with React and Tailwind CSS to developing interactive projects in Unity and C#, I enjoy turning complex problems into intuitive digital solutions.', 
    '2+', 
    '2+', 
    '/assets/CV.pdf'
);

INSERT INTO social_links (platform, url) VALUES
('Instagram','https://www.instagram.com/lorenzo.feula/'),
('Tiktok','https://www.tiktok.com/@lorenzo.feula'),
('Github','https://github.com/feulalorenzo'),
('Youtube','https://www.youtube.com/@LoryCat_22')
;

INSERT INTO skills (skill_name, percentage, color) VALUES
('React Js', 60, '#61DAFB'),
('Tailwind CSS', 40, '#06B6D4'),
('Unity', 80, '#4FC08D'),
('Javascript', 70, '#F7DF1E')
;

INSERT INTO certificates (title, certificate_issuer, date_year, credential_url) VALUES
('High School Diploma in Computer Science', 'ITI A.Pacinotti, Italy', '2022', '#'),
('Bachelor\'s Degree in Computer Science', 'Università degli Studi dell\'Aquila, Italy', '2026', '#');

INSERT INTO projects (title, description, image_url, tags, github_url, live_url) VALUES
('Ermes Project', 'The ERMES project aims to develop an advanced technological solution for the motor rehabilitation of patients with neuromotor or neurocognitive disabilities.', '/assets/project1.jpg', 'Unity,C#', '#', '#'),
('Grabya!', '2D Puzzle Game developed during a Game Jam contest', '/assets/project2.jpg', 'Godot,GDScript', '#', '#'),
('Portfolio', 'This portfolio is made by me, using both Frontend and Backend skills', '/assets/project3.jpg', 'React Js,Tailwind CSS,Framer Motion, PHP, MySQL', '#', '#');