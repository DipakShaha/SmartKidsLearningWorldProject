
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Smart Kids Learning World</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
 rel="stylesheet">

<style>
:root {
    --navy:#142650;
    --blue:#1682f5;
    --purple:#7945ee;
    --pink:#f5448a;
    --green:#11bd70;
    --orange:#ff991f;
}
* {box-sizing:border-box}
body {
    margin:0;
    background:#f3f6ff;
    color:#1b2c52;
    font-family:"Trebuchet MS",Arial,sans-serif;
}
button {transition:.2s}
button:hover {transform:translateY(-2px)}
.topbar {
    background:var(--navy);
    color:white;
    padding:13px 20px;
    display:flex;
    justify-content:space-between;
    align-items:center;
    gap:12px;
    position:sticky;
    top:0;
    z-index:20;
}
.logo {font-size:23px;font-weight:900}
.logo span {color:#b8ef50}
.pill {
    border:1px solid #516895;
    border-radius:25px;
    padding:7px 12px;
    font-weight:bold;
}
.layout {
    display:grid;
    grid-template-columns:220px minmax(0,1fr);
    min-height:calc(100vh - 65px);
}
.sidebar {
    background:var(--navy);
    padding:12px 9px;
    color:white;
    display:flex;
    flex-direction:column;
    gap:5px;
}
.nav-btn {
    border:0;
    background:transparent;
    color:white;
    border-radius:11px;
    padding:11px;
    text-align:left;
    font-weight:bold;
}
.nav-btn:hover,.nav-btn.active {background:#1682f5;color:white}
.creator-nav {background:#a72db3;margin-top:5px}
.main {padding:18px;min-width:0}
.hero {
    background:linear-gradient(120deg,#d7efff,#eee2ff,#fff0d8);
    border:1px solid #c7dcff;
    border-radius:23px;
    padding:24px;
}
.hero h1 {
    font-size:clamp(26px,3vw,42px);
    font-weight:900;
    color:#303bb3;
}
.hero-art {font-size:clamp(50px,7vw,85px);text-align:center}
.btn-fun {
    border:0;
    background:linear-gradient(90deg,#7239ef,#a044f4);
    color:white;
    padding:11px 20px;
    border-radius:28px;
    font-weight:bold;
}
.section-title {font-weight:900;font-size:23px;margin:24px 0 14px}
.panel {
    background:white;
    border:1px solid #e1e6fa;
    border-radius:19px;
    padding:19px;
    scroll-margin-top:85px;
}
.learning-card {
    height:100%;
    padding:15px 10px;
    text-align:center;
    border-radius:17px;
    border:1px solid #e0e5fa;
}
.learning-card .emoji {font-size:43px}
.learning-card h3 {font-size:16px;font-weight:900}
.learning-card p {font-size:13px;min-height:36px}
.learning-card button {
    width:100%;
    border:0;
    color:white;
    border-radius:22px;
    padding:9px 5px;
    font-weight:bold;
}
.c1 {background:#f3efff}
.c2 {background:#e9fff2}
.c3 {background:#fff4df}
.c4 {background:#ffedf6}
.c5 {background:#e6fbff}
.blue {background:#1682f5}
.green {background:#11b96b}
.orange {background:#ff9417}
.pink {background:#f63e76}
.purple {background:#8050ed}
.cyan {background:#0aabc0}
.tile {
    border:2px solid #e4e8fa;
    background:#fafaff;
    border-radius:12px;
    min-height:72px;
    width:100%;
    font-size:24px;
    font-weight:900;
}
.tile:hover {background:#eee8ff;border-color:#9275ef}
.animal-card,.food-card {
    border:2px solid #e7eafa;
    background:white;
    border-radius:17px;
    padding:14px 8px;
    text-align:center;
    width:100%;
    height:100%;
}
.animal-card .emoji,.food-card .emoji {font-size:48px}
.animal-card h4,.food-card h4 {font-size:16px;font-weight:900}
.answer {
    background:#f1efff;
    border:1px solid #dcd3ff;
    border-radius:12px;
    padding:12px;
    font-weight:bold;
    width:100%;
}
.answer:hover {background:#dfd6ff}
.lang-btn {
    border:2px solid #e2e5fa;
    background:white;
    border-radius:13px;
    padding:12px 6px;
    font-weight:bold;
}
.lang-btn.selected {background:#e8e1ff;border-color:#7c5bed}
.story-card {
    border-radius:16px;
    background:#f4f0ff;
    padding:17px;
    height:100%;
}
.progress-card {
    background:white;
    padding:17px;
    border-radius:18px;
    border:1px solid #e1e6fa;
}
#creatorToast {
    position:fixed;
    bottom:20px;
    right:20px;
    max-width:330px;
    background:white;
    border:2px solid #8b5cf6;
    border-radius:18px;
    box-shadow:0 8px 30px #0002;
    padding:18px;
    z-index:40;
    display:none;
}
footer {
    background:var(--navy);
    color:white;
    padding:18px;
    text-align:center;
}
@media(max-width:900px) {
    .layout {grid-template-columns:1fr}
    .sidebar {
        flex-direction:row;
        overflow-x:auto;
        position:sticky;
        top:59px;
        z-index:15;
    }
    .nav-btn {white-space:nowrap;min-width:max-content}
    .main {padding:12px}
}
@media(max-width:500px) {
    .topbar {padding:10px}
    .logo {font-size:17px}
    .pill {font-size:12px;padding:6px}
    .hero {padding:17px}
}
</style>
</head>
<body>

<header class="topbar">
    <div class="logo">🎓 Smart <span>Kids</span></div>
    <div class="d-flex gap-2 align-items-center">
        <div class="pill">⭐ <span id="stars">0</span></div>
        <div class="pill">🏆 Level <span id="level">1</span></div>
    </div>
</header>

<div class="layout">
<aside class="sidebar">
    <button class="nav-btn active" onclick="go('home',this)">🏠 Home</button>
    <button class="nav-btn" onclick="go('progress',this)">🏆 My Progress</button>
    <button class="nav-btn" onclick="go('alphabet',this)">🔤 Alphabet</button>
    <button class="nav-btn" onclick="go('numbers',this)">🔢 Numbers</button>
    <button class="nav-btn" onclick="go('tables',this)">✖️ Tables</button>
    <button class="nav-btn" onclick="go('animals',this)">🐘 Animal Identify</button>
    <button class="nav-btn" onclick="go('foods',this)">🍎 Fruits & Vegetables</button>
    <button class="nav-btn" onclick="go('games',this)">🎮 Games Zone</button>
    <button class="nav-btn" onclick="go('stories',this)">📚 Story Listening</button>
    <button class="nav-btn" onclick="go('languages',this)">🌐 Languages</button>
    <button class="nav-btn" onclick="go('parents',this)">👨‍👩‍👧 Parent Corner</button>
    <button class="nav-btn creator-nav" onclick="aboutCreator()">💜 About Creator</button>
</aside>

<main class="main">

<section id="home" class="hero">
    <div class="row align-items-center">
        <div class="col-md-8">
            <p class="fw-bold">🌈 LEARN • PLAY • GROW</p>
            <h1 id="welcomeTitle">Welcome to Smart Kids Learning World!</h1>
            <h5 id="welcomeSub">Fun Learning for a Brighter Future!</h5>
            <p id="welcomeText">Explore animals, fruits, numbers, stories and exciting games!</p>
            <button class="btn-fun" onclick="go('alphabet')">🚀 Start Learning</button>
            <button class="btn btn-outline-primary rounded-pill mt-2"
                onclick="aboutCreator()">💜 Meet My Creator</button>
        </div>
        <div class="col-md-4 hero-art">🦁 🌈 🧒🏻</div>
    </div>
</section>

<section id="progress">
    <h2 class="section-title">🏆 My Learning Journey</h2>
    <div class="progress-card">
        <div class="row text-center g-3">
            <div class="col-4">
                <h3>⭐ <span id="pStars">0</span></h3>
                <small>Stars Earned</small>
            </div>
            <div class="col-4">
                <h3>🎯 <span id="pCorrect">0</span></h3>
                <small>Correct Answers</small>
            </div>
            <div class="col-4">
                <h3>📘 <span id="pActivities">0</span></h3>
                <small>Activities Tried</small>
            </div>
        </div>
        <div class="progress mt-3" style="height:12px">
            <div id="progressBar" class="progress-bar bg-success" style="width:0%"></div>
        </div>
        <p class="mt-2 mb-0">Complete activities to earn more stars!</p>
    </div>
</section>

<section>
<h2 class="section-title">🎨 Choose Your Adventure</h2>
<div class="row row-cols-2 row-cols-md-3 row-cols-xl-6 g-3">
    <div class="col"><div class="learning-card c1">
        <div class="emoji">🔤</div><h3>Alphabet</h3>
        <p>Letters and sounds</p><button class="blue" onclick="go('alphabet')">Explore ➜</button>
    </div></div>
    <div class="col"><div class="learning-card c2">
        <div class="emoji">🔢</div><h3>Numbers</h3>
        <p>Count and learn</p><button class="green" onclick="go('numbers')">Explore ➜</button>
    </div></div>
    <div class="col"><div class="learning-card c3">
        <div class="emoji">✖️</div><h3>Tables</h3>
        <p>Become a table master</p><button class="orange" onclick="go('tables')">Explore ➜</button>
    </div></div>
    <div class="col"><div class="learning-card c4">
        <div class="emoji">🐘</div><h3>Animals</h3>
        <p>Identify animal friends</p><button class="pink" onclick="go('animals')">Play Now ➜</button>
    </div></div>
    <div class="col"><div class="learning-card c2">
        <div class="emoji">🍎</div><h3>Healthy Food</h3>
        <p>Fruits and vegetables</p><button class="green" onclick="go('foods')">Explore ➜</button>
    </div></div>
    <div class="col"><div class="learning-card c5">
        <div class="emoji">🎮</div><h3>Fun Games</h3>
        <p>Learn through play</p><button class="cyan" onclick="go('games')">Play Now ➜</button>
    </div></div>
</div>
</section>

<section id="languages" class="panel mt-4">
    <h2 class="section-title mt-0">🌐 Choose Your Language</h2>
    <p>Learn in the language you love.</p>
    <div class="row g-3">
        <div class="col-4"><button id="hiBtn" class="lang-btn w-100"
            onclick="setLanguage('hi')">🇮🇳<br>हिंदी<br>Hindi</button></div>
        <div class="col-4"><button id="mrBtn" class="lang-btn w-100"
            onclick="setLanguage('mr')">🇮🇳<br>मराठी<br>Marathi</button></div>
        <div class="col-4"><button id="enBtn" class="lang-btn w-100 selected"
            onclick="setLanguage('en')">🇬🇧<br>English<br>English</button></div>
    </div>
    <p id="languageMessage" class="alert alert-info mt-3 mb-0">
        Welcome! Choose an activity to begin.
    </p>
</section>

<section id="alphabet" class="panel mt-4">
    <h2 class="section-title mt-0">🔤 Alphabet Adventure</h2>
    <p>Click a letter to see a word and hear it spoken.</p>
    <div id="alphabetGrid" class="row row-cols-4 row-cols-sm-6 row-cols-md-7 g-2"></div>
    <div class="alert alert-primary mt-3 text-center">
        <h3 id="letterResult">A for Apple 🍎</h3>
        <button class="btn btn-primary rounded-pill" onclick="speakLetter()">🔊 Listen</button>
    </div>
</section>

<section id="numbers" class="panel mt-4">
    <h2 class="section-title mt-0">🔢 Number Explorer</h2>
    <div id="numberGrid" class="row row-cols-4 row-cols-sm-6 row-cols-md-10 g-2"></div>
    <div class="alert alert-success mt-3 text-center">
        <h3 id="numberResult">1 — One</h3>
        <button class="btn btn-success rounded-pill" onclick="speakNumber()">🔊 Listen</button>
    </div>
</section>

<section id="tables" class="panel mt-4">
    <h2 class="section-title mt-0">✖️ Table Master</h2>
    <label for="tableNumber" class="form-label">Choose a number (1–100)</label>
    <div class="row g-2">
        <div class="col-7 col-md-4">
            <input id="tableNumber" class="form-control form-control-lg"
                type="number" min="1" max="100" value="7">
        </div>
        <div class="col-5 col-md-3">
            <button class="btn btn-success btn-lg w-100" onclick="generateTable()">Show Table</button>
        </div>
    </div>
    <div id="tableResult" class="row row-cols-2 row-cols-md-3 g-2 mt-2"></div>
</section>

<section id="animals" class="panel mt-4">
    <h2 class="section-title mt-0">🐾 Animal Identification Adventure</h2>
    <p>Which animal is shown below? Choose the correct answer!</p>
    <div class="text-center p-3 rounded-4" style="background:#eef8ff">
        <div id="animalEmoji" style="font-size:100px">🦁</div>
        <h3 id="animalQuestion" class="fw-bold">What animal is this?</h3>
        <button class="btn btn-outline-primary rounded-pill mb-3"
            onclick="speakAnimal()">🔊 Listen</button>
    </div>
    <div id="animalOptions" class="row g-2 mt-2"></div>
    <div id="animalFeedback" class="fw-bold mt-3" aria-live="polite"></div>
    <button class="btn-fun mt-3" onclick="nextAnimal()">Next Animal ➜</button>
</section>

<section id="foods" class="panel mt-4">
    <h2 class="section-title mt-0">🍎 Fruits & Vegetables</h2>
    <p>Learn healthy foods in English, Hindi and Marathi.</p>
    <div class="row row-cols-2 row-cols-md-4 g-3" id="foodGrid"></div>
    <div class="alert alert-success mt-3 mb-0">
        💡 <strong>Healthy habit:</strong> Eat a variety of fruits and vegetables!
    </div>
</section>

<section id="games" class="panel mt-4">
    <h2 class="section-title mt-0">🎮 Guess the Number</h2>
    <p>Find the secret number from 1 to 10!</p>
    <div id="guessButtons" class="d-flex flex-wrap gap-2"></div>
    <div id="guessFeedback" class="fw-bold mt-3" aria-live="polite"></div>
    <button class="btn btn-outline-primary rounded-pill mt-2"
        onclick="newGuess()">🔄 New Game</button>
</section>

<section id="stories" class="panel mt-4">
    <h2 class="section-title mt-0">📚 Story Listening Corner</h2>
    <p>Choose a story. Read it or listen in your selected language.</p>
    <div class="row g-3">
        <div class="col-md-4"><div class="story-card">
            <div style="font-size:48px">🐢</div>
            <h4 class="fw-bold">The Tortoise and the Hare</h4>
            <button class="btn-fun" onclick="playStory('tortoise')">▶ Listen</button>
        </div></div>
        <div class="col-md-4"><div class="story-card" style="background:#eafff1">
            <div style="font-size:48px">🦁</div>
            <h4 class="fw-bold">The Kind Lion</h4>
            <button class="btn btn-success rounded-pill" onclick="playStory('lion')">▶ Listen</button>
        </div></div>
        <div class="col-md-4"><div class="story-card" style="background:#fff3df">
            <div style="font-size:48px">🐜</div>
            <h4 class="fw-bold">The Ant and the Dove</h4>
            <button class="btn btn-warning rounded-pill" onclick="playStory('ant')">▶ Listen</button>
        </div></div>
    </div>
    <div class="alert alert-light border mt-3">
        <h5 id="storyTitle">Your story will appear here.</h5>
        <p id="storyText" class="mb-0">Choose a story above to begin.</p>
        <button class="btn btn-outline-primary rounded-pill mt-3"
            onclick="readCurrentStory()">🔊 Read Again</button>
        <button class="btn btn-outline-danger rounded-pill mt-3"
            onclick="stopSpeech()">⏹ Stop Audio</button>
    </div>
</section>

<section id="parents" class="panel mt-4">
    <h2 class="section-title mt-0">👨‍👩‍👧 Parent Corner</h2>
    <p>Make learning a happy daily habit for your child.</p>
    <div class="row g-3">
        <div class="col-md-4"><div class="story-card">
            <h4>⏰ Daily Learning</h4>
            <p>Try short, fun learning sessions every day.</p>
        </div></div>
        <div class="col-md-4"><div class="story-card">
            <h4>🌟 Encourage Effort</h4>
            <p>Celebrate curiosity and trying again, not only correct answers.</p>
        </div></div>
        <div class="col-md-4"><div class="story-card">
            <h4>🌐 Learn Together</h4>
            <p>Use Hindi, Marathi and English to build vocabulary.</p>
        </div></div>
    </div>
    <p class="alert alert-info mt-3 mb-0">
        This demo keeps progress in the current page only. Parent accounts
        and saved reports can be added using Java Servlets and MySQL.
    </p>
</section>

<section class="panel mt-4" id="creator">
    <h2 class="section-title mt-0">💜 About the Creator</h2>
    <div class="text-center p-3 rounded-4" style="background:#f2edff">
        <div style="font-size:65px">👨🏻‍🏫</div>
        <h3 class="fw-bold">Dipakkumar Mahendra Shahare</h3>
        <p>Creator of Smart Kids Learning World</p>
        <button class="btn-fun" onclick="aboutCreator()">🔊 Meet My Creator</button>
    </div>
</section>

</main>
</div>

<div id="creatorToast">
    <button class="btn-close float-end" onclick="hideCreator()"
        aria-label="Close"></button>
    <div style="font-size:38px">👨🏻‍🏫 💜</div>
    <strong>Meet My Creator!</strong>
    <p class="mb-2">Dipakkumar Mahendra Shahare</p>
    <small>Made with ❤️ to make learning fun for every child.</small>
</div>

<footer>
    💜 Made with love by Dipakkumar Mahendra Shahare
    <br><small>Smart Kids Learning World — Every Child Can Shine! ⭐</small>
    <br><button class="btn btn-info rounded-pill mt-2" onclick="aboutCreator()">
        🔊 About Creator
    </button>
</footer>

<script>
const words = {
    en:{
        welcome:"Welcome to Smart Kids Learning World!",
        sub:"Fun Learning for a Brighter Future!",
        intro:"Explore animals, fruits, numbers, stories and exciting games!",
        welcomeLang:"Welcome! Choose an activity to begin.",
        creator:"Namaste! This website was created by Dipakkumar Mahendra Shahare ji. Let's learn and play together!",
        animals:"What animal is this?",
        correct:"Excellent! That is correct!",
        wrong:"Good try! Let's try again!",
        tortoise:"The Tortoise and the Hare",
        lion:"The Kind Lion",
        ant:"The Ant and the Dove"
    },
    hi:{
        welcome:"स्मार्ट किड्स लर्निंग वर्ल्ड में आपका स्वागत है!",
        sub:"खेल-खेल में सीखें, आगे बढ़ें!",
        intro:"जानवरों, फलों, संख्याओं और मजेदार कहानियों को सीखें!",
        welcomeLang:"नमस्ते! आइए, कुछ नया सीखें।",
        creator:"नमस्ते बच्चों! मुझे Dipakkumar Mahendra Shahare जी ने बनाया है। आइए, खेल-खेल में सीखें!",
        animals:"यह कौन-सा जानवर है?",
        correct:"शाबाश! आपका जवाब सही है!",
        wrong:"कोई बात नहीं! फिर से कोशिश करो!",
        tortoise:"कछुआ और खरगोश",
        lion:"दयालु शेर",
        ant:"चींटी और कबूतर"
    },
    mr:{
        welcome:"स्मार्ट किड्स लर्निंग वर्ल्डमध्ये तुमचे स्वागत आहे!",
        sub:"खेळता खेळता शिकूया!",
        intro:"प्राणी, फळे, संख्या आणि मजेदार गोष्टी शिकूया!",
        welcomeLang:"नमस्कार! चला, काहीतरी नवीन शिकूया.",
        creator:"नमस्कार मुलांनो! मला Dipakkumar Mahendra Shahare यांनी तयार केले आहे. चला, खेळता खेळता शिकूया!",
        animals:"हा कोणता प्राणी आहे?",
        correct:"छान! तुमचे उत्तर बरोबर आहे!",
        wrong:"काही हरकत नाही! पुन्हा प्रयत्न करा!",
        tortoise:"कासव आणि ससा",
        lion:"दयाळू सिंह",
        ant:"मुंगी आणि कबूतर"
    }
};

const animals = [
    {emoji:"🦁",en:"Lion",hi:"शेर",mr:"सिंह",sound:"Roar"},
    {emoji:"🐘",en:"Elephant",hi:"हाथी",mr:"हत्ती",sound:"Trumpet"},
    {emoji:"🐒",en:"Monkey",hi:"बंदर",mr:"माकड",sound:"Chatter"},
    {emoji:"🐄",en:"Cow",hi:"गाय",mr:"गाय",sound:"Moo"},
    {emoji:"🐶",en:"Dog",hi:"कुत्ता",mr:"कुत्रा",sound:"Woof"},
    {emoji:"🐱",en:"Cat",hi:"बिल्ली",mr:"मांजर",sound:"Meow"},
    {emoji:"🐯",en:"Tiger",hi:"बाघ",mr:"वाघ",sound:"Growl"},
    {emoji:"🐰",en:"Rabbit",hi:"खरगोश",mr:"ससा",sound:"Rabbit"}
];

const foods = [
    {emoji:"🍎",en:"Apple",hi:"सेब",mr:"सफरचंद",type:"Fruit"},
    {emoji:"🍌",en:"Banana",hi:"केला",mr:"केळे",type:"Fruit"},
    {emoji:"🥭",en:"Mango",hi:"आम",mr:"आंबा",type:"Fruit"},
    {emoji:"🍇",en:"Grapes",hi:"अंगूर",mr:"द्राक्षे",type:"Fruit"},
    {emoji:"🍊",en:"Orange",hi:"संतरा",mr:"संत्रे",type:"Fruit"},
    {emoji:"🍉",en:"Watermelon",hi:"तरबूज",mr:"कलिंगड",type:"Fruit"},
    {emoji:"🥕",en:"Carrot",hi:"गाजर",mr:"गाजर",type:"Vegetable"},
    {emoji:"🥔",en:"Potato",hi:"आलू",mr:"बटाटा",type:"Vegetable"},
    {emoji:"🍅",en:"Tomato",hi:"टमाटर",mr:"टोमॅटो",type:"Vegetable"},
    {emoji:"🥦",en:"Broccoli",hi:"ब्रोकोली",mr:"ब्रोकोली",type:"Vegetable"},
    {emoji:"🥒",en:"Cucumber",hi:"खीरा",mr:"काकडी",type:"Vegetable"},
    {emoji:"🌽",en:"Corn",hi:"मक्का",mr:"मका",type:"Vegetable"}
];

const letters = [
 ["A","Apple","🍎"],["B","Ball","⚽"],["C","Cat","🐱"],
 ["D","Dog","🐶"],["E","Elephant","🐘"],["F","Fish","🐟"],
 ["G","Grapes","🍇"],["H","House","🏠"],["I","Ice Cream","🍦"],
 ["J","Jug","🫗"],["K","Kite","🪁"],["L","Lion","🦁"],
 ["M","Mango","🥭"],["N","Nest","🪺"],["O","Orange","🍊"],
 ["P","Parrot","🦜"],["Q","Queen","👑"],["R","Rabbit","🐰"],
 ["S","Sun","☀️"],["T","Tiger","🐯"],["U","Umbrella","☂️"],
 ["V","Van","🚐"],["W","Watch","⌚"],["X","Xylophone","🎵"],
 ["Y","Yak","🐂"],["Z","Zebra","🦓"]
];

let lang = "en";
let stars = 0, correct = 0, activities = new Set();
let selectedLetter = letters[0], selectedNumber = 1;
let animalIndex = 0, foodIndex = 0, secretNumber = 1;
let currentStory = "";
let animalAnswered = false;

const stories = {
    tortoise:{
        en:"A hare laughed at a slow tortoise. They had a race. The hare ran fast but stopped to sleep. The tortoise kept going and won. The lesson is: slow and steady wins the race!",
        hi:"एक खरगोश धीमे कछुए पर हँसता था। दोनों ने दौड़ लगाई। खरगोश तेज दौड़ा, लेकिन सो गया। कछुआ धीरे-धीरे चलता रहा और जीत गया। सीख: लगातार मेहनत करने से सफलता मिलती है!",
        mr:"एक ससा हळू चालणाऱ्या कासवाची थट्टा करत होता. दोघांनी शर्यत लावली. ससा वेगाने धावला पण झोपला. कासव चालत राहिले आणि जिंकले. शिकवण: सातत्याने प्रयत्न केल्यास यश मिळते!"
    },
    lion:{
        en:"A little mouse woke a sleeping lion. The lion let the mouse go. Later, the mouse helped the lion escape from a net. Even small friends can help in big ways!",
        hi:"एक छोटे चूहे ने सोते हुए शेर को जगा दिया। शेर ने उसे जाने दिया। बाद में चूहे ने जाल काटकर शेर की मदद की। सीख: छोटा दोस्त भी बड़ी मदद कर सकता है!",
        mr:"एका छोट्या उंदराने झोपलेल्या सिंहाला जागे केले. सिंहाने त्याला सोडून दिले. नंतर उंदराने जाळे कुरतडून सिंहाची सुटका केली. शिकवण: लहान मित्रही मोठी मदत करू शकतो!"
    },
    ant:{
        en:"An ant fell into a river. A dove dropped a leaf into the water, and the ant climbed on it. Later, the ant helped save the dove. Kindness comes back to us!",
        hi:"एक चींटी नदी में गिर गई। एक कबूतर ने पत्ता गिराकर उसकी मदद की। बाद में चींटी ने कबूतर की मदद की। सीख: दूसरों की मदद करना अच्छी बात है!",
        mr:"एक मुंगी नदीत पडली. एका कबुतराने पान टाकून तिची मदत केली. नंतर मुंगीने कबुतराची मदत केली. शिकवण: इतरांना मदत करावी!"
    }
};

function go(id,button) {
    const el = document.getElementById(id);
    if(el) el.scrollIntoView({behavior:"smooth",block:"start"});
    document.querySelectorAll(".nav-btn").forEach(b=>b.classList.remove("active"));
    if(button) button.classList.add("active");
}

function speak(text) {
    if(!("speechSynthesis" in window)) {
        alert("Please use an updated browser with speech support.");
        return;
    }
    speechSynthesis.cancel();
    const u = new SpeechSynthesisUtterance(text);
    u.lang = lang==="hi" ? "hi-IN" : lang==="mr" ? "mr-IN" : "en-IN";
    u.rate = 0.85;
    speechSynthesis.speak(u);
}

function aboutCreator() {
    const box = document.getElementById("creatorToast");
    box.style.display = "block";
    speak(words[lang].creator);
}

function hideCreator() {
    document.getElementById("creatorToast").style.display = "none";
}

function setLanguage(value) {
    lang = value;
    document.querySelectorAll(".lang-btn").forEach(b=>b.classList.remove("selected"));
    document.getElementById(value+"Btn").classList.add("selected");

    document.getElementById("welcomeTitle").textContent = words[lang].welcome;
    document.getElementById("welcomeSub").textContent = words[lang].sub;
    document.getElementById("welcomeText").textContent = words[lang].intro;
    document.getElementById("languageMessage").textContent = words[lang].welcomeLang;
    document.getElementById("animalQuestion").textContent = words[lang].animals;

    renderFoods();
    renderAnimals();
    renderAlphabet();
    renderNumbers();
    speak(words[lang].welcomeLang);
}

function updateProgress() {
    document.getElementById("stars").textContent = stars;
    document.getElementById("pStars").textContent = stars;
    document.getElementById("pCorrect").textContent = correct;
    document.getElementById("level").textContent = Math.floor(correct/3)+1;
    document.getElementById("pActivities").textContent = activities.size;
    document.getElementById("progressBar").style.width =
        Math.min(correct/10*100,100)+"%";
}

function award() {
    stars++;
    correct++;
    updateProgress();
}

function renderAlphabet() {
    const grid = document.getElementById("alphabetGrid");
    grid.replaceChildren();

    letters.forEach(item=>{
        const col=document.createElement("div");
        col.className="col";
        const b=document.createElement("button");
        b.className="tile";
        b.textContent=item[0]+" "+item[2];
        b.onclick=()=>{
            selectedLetter=item;
            document.getElementById("letterResult").textContent =
                item[0]+" for "+item[1]+" "+item[2];
            activities.add("alphabet");
            updateProgress();
            speak(item[0]+" for "+item[1]);
        };
        col.appendChild(b);
        grid.appendChild(col);
    });
}

function speakLetter() {
    speak(selectedLetter[0]+" for "+selectedLetter[1]);
}

function numberName(n) {
    const names=["Zero","One","Two","Three","Four","Five","Six",
    "Seven","Eight","Nine","Ten","Eleven","Twelve","Thirteen",
    "Fourteen","Fifteen","Sixteen","Seventeen","Eighteen","Nineteen"];
    if(n<20) return names[n];
    if(n===100) return "One Hundred";
    const tens=["","","Twenty","Thirty","Forty","Fifty","Sixty",
        "Seventy","Eighty","Ninety"];
    return tens[Math.floor(n/10)]+(n%10?" "+names[n%10]:"");
}

function renderNumbers() {
    const grid=document.getElementById("numberGrid");
    grid.replaceChildren();
    for(let n=1;n<=100;n++) {
        const col=document.createElement("div");
        col.className="col";
        const b=document.createElement("button");
        b.className="tile";
        b.style.fontSize="19px";
        b.textContent=n;
        b.onclick=()=>{
            selectedNumber=n;
            document.getElementById("numberResult").textContent=n+" — "+numberName(n);
            activities.add("numbers");
            updateProgress();
            speak(n+" "+numberName(n));
        };
        col.appendChild(b);
        grid.appendChild(col);
    }
}

function speakNumber() {
    speak(selectedNumber+" "+numberName(selectedNumber));
}

function generateTable() {
    const n=Number(document.getElementById("tableNumber").value);
    const result=document.getElementById("tableResult");
    result.replaceChildren();
    if(!Number.isInteger(n)||n<1||n>100) {
        alert("Enter a whole number from 1 to 100.");
        return;
    }
    for(let i=1;i<=10;i++) {
        const col=document.createElement("div");
        col.className="col";
        const b=document.createElement("button");
        b.className="answer";
        b.textContent=n+" × "+i+" = "+n*i;
        b.onclick=()=>speak(b.textContent);
        col.appendChild(b);
        result.appendChild(col);
    }
    activities.add("tables");
    updateProgress();
}

function renderAnimals() {
    const a=animals[animalIndex];
    document.getElementById("animalEmoji").textContent=a.emoji;
    document.getElementById("animalQuestion").textContent=words[lang].animals;
    document.getElementById("animalFeedback").textContent="";
    document.getElementById("animalOptions").replaceChildren();
    animalAnswered=false;

    const options=[a.en];
    while(options.length<3) {
        const candidate=animals[Math.floor(Math.random()*animals.length)].en;
        if(!options.includes(candidate)) options.push(candidate);
    }
    options.sort(()=>Math.random()-0.5);

    options.forEach(name=>{
        const col=document.createElement("div");
        col.className="col-4";
        const b=document.createElement("button");
        b.className="answer h-100";
        b.textContent=animals.find(x=>x.en===name)[lang];
        b.onclick=()=>{
            if(animalAnswered)return;
            animalAnswered=true;
            if(name===a.en) {
                document.getElementById("animalFeedback").textContent=
                    "🎉 "+words[lang].correct+" "+a[lang];
                award();
                activities.add("animals");
            } else {
                document.getElementById("animalFeedback").textContent=
                    "💛 "+words[lang].wrong+" "+a[lang];
            }
            updateProgress();
        };
        col.appendChild(b);
        document.getElementById("animalOptions").appendChild(col);
    });
}

function speakAnimal() {
    const a=animals[animalIndex];
    speak(a[lang]+". "+a.sound);
}

function nextAnimal() {
    animalIndex=(animalIndex+1)%animals.length;
    renderAnimals();
}

function renderFoods() {
    const grid=document.getElementById("foodGrid");
    grid.replaceChildren();
    foods.forEach((food,index)=>{
        const col=document.createElement("div");
        col.className="col";
        const b=document.createElement("button");
        b.className="food-card";
        const emoji=document.createElement("div");
        emoji.className="emoji";
        emoji.textContent=food.emoji;
        const title=document.createElement("h4");
        title.textContent=food[lang];
        const type=document.createElement("small");
        type.textContent=food.type==="Fruit"
            ? (lang==="hi"?"फल":lang==="mr"?"फळ":"Fruit")
            : (lang==="hi"?"सब्जी":lang==="mr"?"भाजी":"Vegetable");
        b.append(emoji,title,type);
        b.onclick=()=>{
            foodIndex=index;
            speak(food[lang]);
            activities.add("foods");
            updateProgress();
        };
        col.appendChild(b);
        grid.appendChild(col);
    });
}

function playStory(id) {
    currentStory=stories[id][lang];
    document.getElementById("storyTitle").textContent=words[lang][id];
    document.getElementById("storyText").textContent=currentStory;
    activities.add("stories");
    updateProgress();
    speak(currentStory);
}

function readCurrentStory() {
    if(currentStory) speak(currentStory);
    else speak("Please select a story first.");
}

function stopSpeech() {
    if("speechSynthesis" in window) speechSynthesis.cancel();
}

function newGuess() {
    secretNumber=Math.floor(Math.random()*10)+1;
    document.getElementById("guessFeedback").textContent=
        "A new number is ready. Good luck!";
}

function buildGuess() {
    const grid=document.getElementById("guessButtons");
    for(let n=1;n<=10;n++) {
        const b=document.createElement("button");
        b.className="btn btn-outline-primary rounded-pill";
        b.textContent=n;
        b.onclick=()=>{
            if(n===secretNumber) {
                document.getElementById("guessFeedback").textContent=
                    "🎉 Correct! You found the number!";
                award();
                activities.add("games");
                updateProgress();
                speak("Amazing! You found the number!");
                newGuess();
            } else {
                document.getElementById("guessFeedback").textContent=
                    n<secretNumber?"⬆️ Try a bigger number!":"⬇️ Try a smaller number!";
            }
        };
        grid.appendChild(b);
    }
}

renderAlphabet();
renderNumbers();
renderAnimals();
renderFoods();
generateTable();
buildGuess();
newGuess();
</script>
</body>
</html>
