%%
%% This is file `coppe.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% coppe.dtx  (with options: `class')
%% 
%% This is the `coppe' document class used for composition of LaTeX
%% monographs (master and PhD thesis, and PhD qualifying exams)
%% satisfying the requirements of the Coordination of Research and
%% Graduate Courses in Engineering at the Federal University of
%% Rio de Janeiro.
%% 
%% Copyright (C) 2008 Vicente Helano and George Ainsworth Jr.
%% 
%% This program is free software; you can redistribute it and/or modify
%% it under the terms of the GNU General Public License version 3 as
%% published by the Free Software Foundation.
%% 
%% This program is distributed in the hope that it will be useful,
%% but WITHOUT ANY WARRANTY; without even the implied warranty of
%% MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
%% GNU General Public License version 3 for more details.
%% 
%% You should have received a copy of the GNU General Public License
%% version 3 along with this package (see COPYING file).
%% If not, see <http://www.gnu.org/licenses/>.
%% 
%% Author(s): Vicente Helano,
%%            George Ainsworth
%% 
%% \CheckSum{1416}
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
%%
\def\filename{coppe.dtx}
\def\fileversion{v2.2}
\def\filedate{2011/02/08}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{libs/coppe}[\filedate\ \fileversion\ COPPE Dissertations and Thesis]
\LoadClass[12pt,a4paper,oneside]{book}
\RequirePackage[sort&compress]{natbib}
\RequirePackage{hyphenat}
\RequirePackage{lastpage}
\RequirePackage[english,brazil]{babel}
\RequirePackage{ifthen}
\RequirePackage{graphicx}
\RequirePackage{setspace}
\RequirePackage{tabularx}
\RequirePackage{eqparbox}
\RequirePackage{ltxcmds}
\RequirePackage[a4paper,bindingoffset=0.0cm,vcentering=true,%
top=2.5cm,bottom=2.5cm,left=3.0cm,right=3.0cm]{geometry}
\def\CoppeTeX{{\rm C\kern-.05em{\sc o\kern-.025em p\kern-.025em
p\kern-.025em e}}\kern-.08em
T\kern-.1667em\lower.5ex\hbox{E}\kern-.125emX\spacefactor1000}
\newboolean{maledoc}
\setboolean{maledoc}{false}

\DeclareOption{bcl}{%
  \newcommand{\@degree}{Bel.}
  \newcommand{\@degreename}{Bacharelado}
  \newcommand{\local@degname}{Bacharel}
  \newcommand{\foreign@degname}{Bachelor}
  \newcommand\local@doctype{Monografia}
  \newcommand\foreign@doctype{Monograph}
}
\DeclareOption{lic}{%
  \newcommand{\@degree}{Ldo.}
  \newcommand{\@degreename}{Licenciatura}
  \newcommand{\local@degname}{Licenciado}
  \newcommand{\foreign@degname}{Licentiate}
  \newcommand\local@doctype{Monografia}
  \newcommand\foreign@doctype{Monograph}
}
\DeclareOption{msc}{%
  \newcommand{\@degree}{M.Sc.}
  \newcommand{\@degreename}{Mestrado}
  \newcommand{\local@degname}{Mestre}
  \newcommand{\foreign@degname}{Master}
  \newcommand\local@doctype{Disserta{\c c}{\~ a}o de Mestrado}
  \newcommand\foreign@doctype{Dissertation}
}
\DeclareOption{dscexam}{%
  \newcommand{\@degree}{D.Sc.}
  \newcommand{\@degreename}{Doutorado}
  \newcommand{\local@degname}{Doutor}
  \newcommand{\foreign@degname}{Doctor}
  \setboolean{maledoc}{true}
  \newcommand\local@doctype{Exame de Qualifica{\c c}{\~ a}o}
  \newcommand\foreign@doctype{Qualifying Exam}
}
\DeclareOption{dsc}{%
  \newcommand{\@degree}{D.Sc.}
  \newcommand{\@degreename}{Doutorado}
  \newcommand{\local@degname}{Doutor}
  \newcommand{\foreign@degname}{Doctor}
  \newcommand\local@doctype{Tese}
  \newcommand\foreign@doctype{Thesis}
}
\DeclareOption{numbers}{%
  \PassOptionsToPackage{numbers}{natbib}
}
\onehalfspacing
\DeclareOption{doublespacing}{%
  \doublespacing
}
\ProcessOptions\relax
\newcommand\program[1]{%
 \ifthenelse{\equal{#1}{MAT}}
    {\global\def\local@deptname{Matem{\' a}tica}
     \global\def\foreign@deptname{Mathematics}}{}
 \ifthenelse{\equal{#1}{MATapl}}
    {\global\def\local@deptname{Matem{\' a}tica Aplicada}
     \global\def\foreign@deptname{Applied Mathematics}}{}
}
\newcommand{\matricula}[1]{#1}
\renewcommand\matricula[1]{%
  \global\def\local@matricula{#1}%
}
\newcommand{\conceito}[1]{#1}
\renewcommand\conceito[1]{%
  \global\def\local@conceito{#1}%
}
\newcommand{\numero}[1]{#1}
\renewcommand\numero[1]{%
  \global\def\local@numero{#1}%
}
\renewcommand\title[1]{%
  \global\def\local@title{#1}%
}
\newcommand\foreigntitle[1]{%
  \global\def\foreign@title{#1}%
}
\newcount\@advisor\@advisor0
\newcommand\advisor[4]{%
  \global\@namedef{CoppeAdvisorTitle:\expandafter\the\@advisor}{#1}
  \global\@namedef{CoppeAdvisorName:\expandafter\the\@advisor}{#3}
  \global\@namedef{CoppeAdvisorSurname:\expandafter\the\@advisor}{#4}
  \global\@namedef{CoppeAdvisorDegree:\expandafter\the\@advisor}{#2}
  \global\advance\@advisor by 1
  \ifnum\@advisor>1
    \renewcommand\local@advisorstring{Orientadores}
    \renewcommand\foreign@advisorstring{Advisors}
  \fi
}
\newcount\@examiner\@examiner0
\newcommand\examiner[4]{%
  \global\@namedef{CoppeExaminer:\expandafter\the\@examiner}{#1\ #2 #3}
  \global\@namedef{CoppeOrigem:\expandafter\the\@examiner}{#4}
  \global\advance\@examiner by 1
}
\renewcommand\author[2]{%
  \global\def\@authname{#1}
  \global\def\@authsurn{#2}
}
\renewcommand\date[2]{%
  \month=#1
  \year=#2
}
\newcommand\local@monthname{\ifcase\month\or
  Janeiro\or Fevereiro\or Mar{\c c}o\or Abril\or Maio\or Junho\or
  Julho\or Agosto\or Setembro\or Outubro\or Novembro\or Dezembro\fi}
\newcommand\foreign@monthname{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi}
\newcounter{keywords}
\newcommand\keyword[1]{%
  \global\@namedef{CoppeKeyword:\expandafter\the\c@keywords}{#1}
  \global\addtocounter{keywords}{1}
}
\renewcommand\frontmatter{%
  \cleardoublepage
  \@mainmatterfalse
  \pagenumbering{roman}
  \thispagestyle{empty}
  \setcounter{page}{2}
  \makefrontpage
  \clearpage
  \pagestyle{plain}
  \ifthenelse{\boolean{maledoc}}{}{}%
}
\renewcommand\mainmatter{%
  \coppe@mainBegin
  \cleardoublepage
  \@mainmattertrue
  \pagestyle{plain}
  \pagenumbering{arabic}}
\renewcommand\backmatter{%
  \if@openright
    \cleardoublepage
  \else
    \clearpage
  \fi}
\renewcommand\maketitle{%
\begin{titlepage}
\pagenumbering{roman}
\pagestyle{plain}
\begin{center}
\begin{figure}
\centering
\includegraphics[scale=0.6]{libs/ufrrj.png}
\end{figure}
\vspace{5cm}
{\bf { \large UNIVERSIDADE FEDERAL RURAL DO RIO DE JANEIRO\\
INSTITUTO DE CIÊNCIAS EXATAS\\
CURSO DE GRADUAÇÃO EM MATEMÁTICA\\  }}
\vspace{2cm}
{\Large {{\bf \@authname\ \@authsurn}} \\}
\vspace{3cm}
{ \Large {\bf \local@title}}
\end{center}
\vspace{6cm}
\begin{center}
{\bf \MakeUppercase \local@cityname \\ \number\year}
\end{center}
\end{titlepage}

  \pagenumbering{alph}
  \ltx@ifpackageloaded{hyperref}{\coppe@hypersetup}{}%
  \begin{titlepage}
  \begin{flushleft}
  \vspace*{1.5mm}
  \setlength\baselineskip{0pt}
  \setlength\parskip{1mm}
\centering
  \makebox[20mm][c]{\includegraphics[scale=0.6]{libs/ufrrj}}
  \end{flushleft}
  \vspace{1.05cm}
  \begin{center}
  \nohyphens{\@authname\ \@authsurn}\par
  \vspace*{3cm}
  \nohyphens{\MakeUppercase\local@title}\par
  \end{center}
  \vspace*{2.1cm}
  \begin{flushright}
  \begin{minipage}{8.45cm}
  \frontcover@maintext
  \end{minipage}\par
  \vspace*{7.5mm}
  \par
  \end{flushright}
  \vspace*{\fill}
  \begin{center}
  {\MakeUppercase\local@cityname}\par
  \number\year
  \end{center}
  \end{titlepage}
  \global\let\maketitle\relax%
  \global\let\and\relax}
\newcommand\makefrontpage{%
  \begin{center}
  {\bf UNIVERSIDADE FEDERAL RURAL DO RIO DE JANEIRO}\\
  {\bf INSTITUTO DE CIÊNCIAS EXATAS}\\
  {\bf DEPARTAMENTO DE \MakeUppercase \local@deptname}
  \end{center}
  \vspace{0.7cm}
  \begin{center}
  {\bf COORDENAÇÃO DO CURSO DE GRADUAÇÃO EM MATEMÁTICA}
  \end{center}
  \par
  \vspace*{4mm}
  \begin{flushright}
  \begin{minipage}{9cm}
  \frontpage@maintext
  \end{minipage}
  \end{flushright}
  \vspace*{8mm}
  \noindent\local@approvedname:\par
     \begin{center}
  \begin{flushright}
  \begin{minipage}{9cm}
  \begin{center}
  \count1=0
  \@whilenum \count1<\@examiner \do {
    \vskip26\p@ \baselineskip12pt
  \eqmakebox[signture@list][c]{\hrulefill}\\
  \eqmakebox[signture@list][c]{%
    ~~~\protect\csname CoppeExaminer:\the\count1 \endcsname~~~} \\
  \eqmakebox[signture@list][c]{\csname CoppeOrigem:\the\count1 \endcsname}
    \advance\count1 by 1}
  \end{center}
  \end{minipage}
  \end{flushright}
     \end{center}
  \vspace*{\fill}
  \frontpage@bottomtext}
\newcommand\coppe@hypersetup{%
\begingroup
  % changes to \toks@ and \count@ are kept local;
  % it's not necessary for them, but it is usually the case
  % for \count1, because the first ten counters are written
  % to the DVI file, thus you got lucky because of PDF output
  \toks@={}% in this special case not necessary
  \count@=0 %
  \@whilenum\count@<\value{keywords}\do{%
    % * a keyword separator is not necessary,
    %    if there is just one keyword
    % * \csname CoppeKeyword:\the\count@\endcsname must be expanded
    %    at least once, to get rid of the loop depended \count@
    \ifcase\count@ % same as \ifnum0=\count@
      \toks@=\expandafter{\csname CoppeKeyword:\the\count@\endcsname}%
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter;\expandafter\space
        \csname CoppeKeyword:\the\count@\endcsname
      }%
    \fi
    \advance\count@ by 1 %
  }%
  \edef\x{\endgroup
    \noexpand\hypersetup{%
      pdfkeywords={\the\toks@}%
    }%
  }%
\x
\hypersetup{%
  pdfauthor={\@authname\ \@authsurn},
  pdftitle={\local@title},
  pdfsubject={\local@doctype\ de \@degreename\ em \local@deptname\ da UFRRJ},
  pdfcreator={LaTeX with CoppeTeX toolkit},
  breaklinks={true},
  raiselinks={true},
  pageanchor={true},
}}

\newcommand\dedication[1]{
  \gdef\@dedic{#1}
    \cleardoublepage
    \vspace*{\fill}
    \begin{flushright}
      \begin{minipage}{60mm}
        \raggedleft \it \normalsize \@dedic
      \end{minipage}
    \end{flushright}}

\newenvironment{abstract}{%
  \clearpage
  \thispagestyle{plain}
  \abstract@toptext\par
  \vspace*{8.6mm}
  \begin{center}
    \sloppy\nohyphens{\MakeUppercase\local@title}\par
    \vspace*{13.2mm}
    \@authname\ \@authsurn \par
    \vspace*{7mm}
    \local@monthname/\number\year
  \end{center}\par
  \vspace*{\fill}
  \noindent%
  \begin{tabularx}{\textwidth}[b]{@{}l@{ }>{\raggedright\arraybackslash}X@{}}
    \local@advisorstring: &
    \count1=0
    \toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
      \toks@=\expandafter{\csname CoppeAdvisorName:\the\count1%
      \expandafter\endcsname\expandafter\space%
      \csname CoppeAdvisorSurname:\the\count1\endcsname\\}
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter&\expandafter\space
        \csname CoppeAdvisorName:\the\count1\expandafter\endcsname%
        \expandafter\space\csname CoppeAdvisorSurname:\the\count1\endcsname\\
      }%
    \fi
    \advance\count1 by 1}
    \the\toks@
  \end{tabularx}\par
  \vspace*{2mm}
  \noindent\local@deptstring: \local@deptname\par
  \vspace*{7mm}}{\vspace*{\fill}}
\newenvironment{foreignabstract}{%
  \clearpage
  \thispagestyle{plain}
  \begin{otherlanguage}{english}
  \foreignabstract@toptext\par
  \vspace*{8.6mm}
  \begin{center}
    \sloppy\nohyphens{\MakeUppercase\foreign@title}\par
    \vspace*{13.2mm}
    \@authname\ \@authsurn \par
    \vspace*{7mm}
    \foreign@monthname/\number\year
  \end{center}\par
  \vspace*{\fill}
  \noindent%
  \begin{tabularx}{\textwidth}[b]{@{}l@{ }>{\raggedright\arraybackslash}X@{}}
    \foreign@advisorstring: &
    \count1=0
    \toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
      \toks@=\expandafter{\csname CoppeAdvisorName:\the\count1%
      \expandafter\endcsname\expandafter\space%
      \csname CoppeAdvisorSurname:\the\count1\endcsname\\}
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter&\expandafter\space
        \csname CoppeAdvisorName:\the\count1\expandafter\endcsname%
        \expandafter\space\csname CoppeAdvisorSurname:\the\count1\endcsname\\
      }%
    \fi
    \advance\count1 by 1}
    \the\toks@
  \end{tabularx}\par
  \vspace*{2mm}
  \noindent\foreign@deptstring: \foreign@deptname\par
  \vspace*{7mm}}{%
  \end{otherlanguage}
  \vspace*{\fill}
  \global\let\@author\@empty
  \global\let\@date\@empty
  \global\let\foreign@title\@empty
  \global\let\foreign@title\relax
  \global\let\local@title\@empty
  \global\let\local@title\relax
  \global\let\author\relax
  \global\let\author\relax
  \global\let\date\relax}
\renewcommand\listoffigures{%
    \coppe@hasLof
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listfigurename}%
      \addcontentsline{toc}{chapter}{\listfigurename}%
      \@mkboth{\MakeUppercase\listfigurename}%
              {\MakeUppercase\listfigurename}%
    \@starttoc{lof}%
    \if@restonecol\twocolumn\fi
    }
\renewcommand\listoftables{%
    \if@twocolumn
      \@restonecoltrue\onecolumn
    \else
      \@restonecolfalse
    \fi
    \chapter*{\listtablename}%
      \addcontentsline{toc}{chapter}{\listtablename}%
      \@mkboth{%
          \MakeUppercase\listtablename}%
         {\MakeUppercase\listtablename}%
    \@starttoc{lot}%
    \if@restonecol\twocolumn\fi
    }
\newcommand\printlosymbols{%
\renewcommand\glossaryname{\listsymbolname}%
\@input@{\jobname.los}}
\def\makelosymbols{%
  \newwrite\@losfile
  \immediate\openout\@losfile=\jobname.syx
  \def\symbl{\@bsphack\begingroup
             \@sanitize
             \@wrlos}\typeout
  {Writing index of symbols file \jobname.syx}%
  \let\makelosymbols\@empty
}
\@onlypreamble\makelosymbols
\AtBeginDocument{%
\@ifpackageloaded{hyperref}{%
  \def\@wrlos#1#2{%
    \protected@write\@losfile{}%
      {\string\indexentry{[#1] #2|hyperpage}{\thepage}}%
    \endgroup
    \@esphack}}{%
  \def\@wrlos#1#2{%
    \protected@write\@losfile{}%
      {\string\indexentry{[#1] #2}{\thepage}}%
    \endgroup
    \@esphack}}}
\newcommand\printloabbreviations{%
\renewcommand\glossaryname{\listabbreviationname}%
\@input@{\jobname.lab}}
\def\makeloabbreviations{%
  \newwrite\@labfile
  \immediate\openout\@labfile=\jobname.abx
  \def\abbrev{\@bsphack\begingroup
              \@sanitize
              \@wrlab}\typeout
  {Writing index of abbreviations file \jobname.abx}%
  \let\makeloabbreviations\@empty
}
\@onlypreamble\makeloabbreviations
\AtBeginDocument{%
\@ifpackageloaded{hyperref}{%
  \def\@wrlab#1#2{%
    \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2|hyperpage}{\thepage}}%
    \endgroup
    \@esphack}}{%
  \def\@wrlab#1#2{%
    \protected@write\@labfile{}%
      {\string\indexentry{[#1] #2}{\arabic{page}}}%
    \endgroup
    \@esphack}}}
\AtBeginDocument{%
  \ltx@ifpackageloaded{hyperref}{
    \def\coppe@bibEnd{%
      \immediate\write\@auxout{%
        \string\newlabel{bib:end}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}}%
    \def\coppe@bibBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{bib:begin}{{}{\arabic{page}}{}{page.\arabic{page}}{}}}}%
    \def\coppe@mainBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{front:pageno}{{}{\Roman{page}}{}{page.\roman{page}}{}}}}%
    \def\coppe@hasLof{%
      \immediate\write\@auxout{%
        \string\newlabel{cat:lofflag}{{}{:~il.;}{}{page.\roman{page}}{}}}}%
  }{%
    \def\coppe@bibEnd{%
      \immediate\write\@auxout{%
      \string\newlabel{bib:end}{{}{\arabic{page}}{}}}}%
    \def\coppe@bibBegin{%
      \immediate\write\@auxout{%
      \string\newlabel{bib:begin}{{}{\arabic{page}}{}}}}%
    \def\coppe@mainBegin{%
      \immediate\write\@auxout{%
        \string\newlabel{front:pageno}{{}{\Roman{page}}{}}}}%
    \def\coppe@hasLof{%
      \immediate\write\@auxout{%
        \string\newlabel{cat:lofflag}{{}{:~il.;}{}}}}%
  }%
}
\newdimen\bibindent%
\setlength\bibindent{1.5em}%
\renewenvironment{thebibliography}[1]%
     {\onehalfspacing%
      \chapter*{\bibname}%
      \addcontentsline{toc}{chapter}{\bibname}%
      \coppe@bibBegin
      \list{\@biblabel{\@arabic\c@enumiv}}%
           {\setlength{\labelwidth}{0ex}%
            \setlength{\leftmargin}{9.0ex}%
            \setlength{\itemindent}{-9.0ex}%
            \advance\leftmargin\labelsep%
            \@openbib@code%
            \usecounter{enumiv}%
            \let\p@enumiv\@empty%
            \renewcommand\theenumiv{\@arabic\c@enumiv}}%
      \sloppy%
      \clubpenalty4000%
      \@clubpenalty \clubpenalty%
      \widowpenalty4000%
      \sfcode`\.\@m}%
     {\def\@noitemerr%
       {\@latex@warning{Empty `thebibliography' environment}}%
       \coppe@bibEnd
      \endlist}
\newenvironment{theglossary}{%
  \if@twocolumn%
    \@restonecoltrue\onecolumn%
  \else%
    \@restonecolfalse%
  \fi%
  \@mkboth{\MakeUppercase\glossaryname}%
  {\MakeUppercase\glossaryname}%
  \chapter*{\glossaryname}%
  \addcontentsline{toc}{chapter}{\glossaryname}
  \list{}
  {\setlength{\listparindent}{0in}%
   \setlength{\labelwidth}{1.0in}%
   \setlength{\leftmargin}{1.5in}%
   \setlength{\labelsep}{0.5in}%
   \setlength{\itemindent}{0in}}%
   \sloppy}%
  {\if@restonecol\twocolumn\fi%
\endlist}
\renewenvironment{theindex}{%
  \if@twocolumn
    \@restonecolfalse
  \else
    \@restonecoltrue
  \fi
  \twocolumn[\@makeschapterhead{\indexname}]%
  \@mkboth{\MakeUppercase\indexname}%
  {\MakeUppercase\indexname}%
  \thispagestyle{plain}\parindent\z@
  \addcontentsline{toc}{chapter}{\indexname}
  \parskip\z@ \@plus .3\p@\relax
  \columnseprule \z@
  \columnsep 35\p@
  \let\item\@idxitem}
  {\if@restonecol\onecolumn\else\clearpage\fi}
\newcommand\local@advisorstring{Orientador}
\newcommand\foreign@advisorstring{Advisor}
\ifthenelse{\boolean{maledoc}}{%
  \newcommand\local@approvedname{Examinado por}%
}{%
  \newcommand\local@approvedname{BANCA EXAMINADORA}%
}
\newcommand\local@universityname{Universidade Federal Rural do Rio de Janeiro}
\newcommand\local@deptstring{Programa}
\newcommand\foreign@deptstring{Program}
\newcommand\local@cityname{Seropédica}
\newcommand\local@statename{RJ}
\newcommand\local@countryname{Brasil}
\newcommand\frontcover@maintext{
  \sloppy\nohyphens{\local@doctype\
  \ifthenelse{\boolean{maledoc}}{apresentado}{apresentada}
  à Banca Examinadora da \local@universityname, como parte dos requisitos
  para obten{\c c}{\~ a}o do t{\' i}tulo de
  \local@degname\ em \local@deptname} sob orienta{\c c}{\~ a}o\hspace{-4mm}{
   \count1=0
    \toks@={}
    \@whilenum \count1<\@advisor \do{%
    \ifcase\count1 % same as \ifnum0=\count1
      \toks@=\expandafter{\csname CoppeAdvisorTitle:\the\count1%
      \expandafter\endcsname\expandafter\space%
      \csname CoppeAdvisorDegree:\the\count1%
      \expandafter\endcsname\expandafter\space%
      \csname CoppeAdvisorName:\the\count1%
      \expandafter\endcsname\expandafter\space%
      \csname CoppeAdvisorSurname:\the\count1\endcsname\\}
    \else
      \toks@=\expandafter\expandafter\expandafter{%
        \expandafter\the\expandafter\toks@
        \expandafter&\expandafter\space
        \csname CoppeAdvisorName:\the\count1\expandafter\endcsname%
        \expandafter\space\csname CoppeAdvisorSurname:\the\count1\endcsname\\
      }%
    \fi
    \advance\count1 by 1}
    \the\toks@
}
}

\newcommand\frontpage@maintext{
  \noindent A {\MakeLowercase \local@doctype} ``\local@title", apresentada e defendida 
  por {\MakeUppercase{\@authname\ \@authsurn}}, matrícula \local@matricula,\ foi aprovada pela 
  Banca Examinadora com conceito ``\local@conceito", recebendo o número \local@numero.
  
  \vspace{0.7cm}
  
  \noindent {\local@cityname, \number\day\ de \MakeLowercase \local@monthname\ de \number\year}
  {\par}}%

\newcommand\frontpage@bottomtext{%
}

\newcommand{\dedic}[1]{
\vspace*{\fill}
\begin{flushright}
\begin{minipage}[t]{7 cm}
{#1}
\end{minipage}
\end{flushright}}

\newcommand{\pageempty}{{\protect\thispagestyle{empty}}
\pagenumbering{gobble}}

%% 
%%
%% End of file `coppe.cls'.