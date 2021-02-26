% this is my first package
% 
% (c) Brian Ballsun-Stanton
%
%% This program can be redistributed and/or modified under the terms
%% of the LaTeX Project Public License Distributed from CTAN archives
%% in directory macros/latex/base/lppl.txt.
% 
\NeedsTeXFormat{LaTeX2e}[1994/06/01]
\ProvidesClass{faims3_report}
  [2021/02/26 v0.01 LaTeX package for my own purpose]
\LoadClass[a4paper,headings=small fontsize=10pt]{scrreprt}  

\RequirePackage{background}
\RequirePackage{listings}
\RequirePackage{hyperref}
\RequirePackage{enumitem}
\RequirePackage[authordate,backend=biber,hyperref=true]{biblatex-chicago}





%\RequirePackage[british]{babel}
%\RequirePackage[autostyle,english=british]{csquotes}
\setlist[itemize]{noitemsep, topsep=0mm,
labelindent=3mm, leftmargin=*,
widest=3., align=right}
\setlist[enumerate]{noitemsep, topsep=0mm,
labelindent=3mm, leftmargin=*,
widest=3., align=right}


\hypersetup{
    colorlinks=true,
    linkcolor=blue,
    filecolor=blue,      
    urlcolor=blue,
    citecolor=black
}
\RequirePackage[default,scale=0.95]{opensans} 
\setmainfont[Ligatures=TeX]{Open Sans Light}
\setsansfont[Ligatures=TeX]{Open Sans Light}
\RequirePackage{datetime}
\RequirePackage{xcolor,colortbl}
\setlength{\parindent}{0em}
\setlength{\parskip}{2em}
%\renewcommand{\baselinestretch}{1.25} 
\linespread{1.25}

\definecolor{faimsblue}{RGB}{27,62,147}
\definecolor{faimsorange}{RGB}{246,142,30}

\DeclareRobustCommand\ebseries{\fontseries{eb}\selectfont}
\DeclareRobustCommand\sbseries{\fontseries{sb}\selectfont}
\DeclareRobustCommand\ltseries{\fontseries{l}\selectfont}
\DeclareRobustCommand\clseries{\fontseries{cl}\selectfont}
\DeclareRobustCommand\cseries{\fontseries{c}\selectfont}


\DeclareTextFontCommand{\texteb}{\ebseries}
\DeclareTextFontCommand{\textsb}{\sbseries}
\DeclareTextFontCommand{\textlt}{\ltseries}
\DeclareTextFontCommand{\textcl}{\clseries}
\DeclareTextFontCommand{\textc}{\cseries}
%\RequirePackage{titlesec}
\defaultfontfeatures{Ligatures=TeX}
\RequirePackage{microtype}




%\titleformat*{\section}{\Large\clseries\color{faimsblue}}

\setkomafont{chapter}{\fontspec{Open Sans}\fontseries{l}\selectfont\huge\color{faimsblue}}

\setkomafont{section}{\Large\color{faimsblue}}
\setkomafont{subsection}{\large\color{faimsblue}}
\setkomafont{subsubsection}{\color{faimsblue}}

\backgroundsetup{firstpage = true,scale = 1, angle = 0, opacity = 1,
   contents = {\includegraphics[width = \paperwidth,
   height = \paperheight, keepaspectratio]
   {page1-template.pdf}}}


%\RequirePackage[DIV=8]{typearea}

\RequirePackage[a4paper]{geometry}
\RequirePackage{setspace}
\RequirePackage{lipsum}
\RequirePackage{fancyhdr}
\geometry{
 a4paper,
 left=20mm,
 top=37.5mm,
 right=20mm,
 bottom=27.5mm,
 footskip=10mm
 }
 \renewcommand{\footruleskip}{2mm}

% \geometry{
%  a4paper,
%  left=20mm,
%  top=30mm,
%  right=20mm,
%  bottom=30mm
%  }



\fancyhead{}
\fancyfoot{}
\fancypagestyle{plain}{}

\renewcommand{\headrulewidth}{0.0pt}
\renewcommand{\footrulewidth}{0.0pt}
\fancyfoot[R]{\color{faimsblue}\fontspec{Open Sans}\fontseries{c}\selectfont\footnotesize\thepage}
\fancyfoot[L]{\color{faimsblue}\fontspec{Open Sans}\fontseries{c}\selectfont\footnotesize{}CC-BY Macquarie University}


\renewcommand{\footrulewidth}{0.0pt}
\makeatletter
\patchcmd{\footrule}
  {\if@fancyplain}
  {\color{faimsorange}\if@fancyplain}
  {}
  {}
\makeatother

\newdateformat{ddmonyyyy}{\THEDAY{}  \monthname{} \THEYEAR{}}


\NewDocumentCommand{\allcaps}{m}{%
  {\addfontfeatures{LetterSpace=1.5}\uppercase{#1}}%
}

\NewDocumentCommand{\condensed}{m}{%
  {\addfontfeatures{LetterSpace=.9}#1}%
}






\renewcommand{\mddefault}{l}% switch default weight to light

\RequirePackage{anyfontsize}
\ddmonyyyy


\renewcommand{\maketitle}{%
\begin{titlepage}
    \vspace*{1cm}%
%\fbox{
\parbox{.6\textwidth}{
\begin{flushleft}
\setstretch{1}
\fontspec{Open Sans}\selectfont
\fontsize{30pt}{36pt}%
\bfseries
\selectfont%
\textcolor{faimsblue}{%
\allcaps{FAIMS 3
Elaboration
Report}
}
\end{flushleft}
}
%}
%https://tex.stackexchange.com/questions/68745/possible-values-for-fontseries-and-fontshape

\vspace{-5mm}

\parbox{.7\textwidth}{
\setstretch{1}
\begin{flushleft}

\fontsize{18pt}{21pt}%
\fontseries{l}%
\selectfont%
\textcolor{faimsblue}{%
\allcaps{Design technologies for 2021-2022 the mobile app development cycle}
}


\end{flushleft}}

\parbox{.7\textwidth}{

{\renewcommand{\arraystretch}{1.5}

\vspace{1cm}

\fontseries{l}%
\selectfont%
\begin{tabular}{@{}l p{.6\textwidth}}
\textcolor{faimsblue}{
For} & Technical Advisory Group \&\newline Steering Committee \\
\textcolor{faimsblue}{License} & Creative Commons 4.0 International - With Attribution \\
\textcolor{faimsblue}{Contact} & Brian Ballsun-Stanton \newline <brian@faims.edu.au>
\\
\textcolor{faimsblue}{Version} & 1.0.0-SC
\\
\textcolor{faimsblue}{DOI} & 10.5281/zenodo.4546985
\\
\textcolor{faimsblue}{Authors} & Brian Ballsun-Stanton \newline
Rini Angreani \newline
Steve Cassidy \newline
Simon O’Toole \newline
Nuria Lorente \newline
Elizabeth Mannering


\end{tabular}

}}

\vfill
\fontsize{16pt}{19pt}%
\fontseries{cl}%
\selectfont%
\textcolor{faimsblue}{%
\today
}


\end{titlepage}
    
}

\RedeclareSectionCommand[beforeskip=0pt,afterskip=1mm]{chapter}
\RedeclareSectionCommand[beforeskip=2mm,afterskip=1mm]{section}
\RedeclareSectionCommand[beforeskip=2mm,afterskip=1mm]{subsection}
\RedeclareSectionCommand[beforeskip=2mm,afterskip=1mm]{subsubsection}
%https://tex.stackexchange.com/a/39991
\endinput