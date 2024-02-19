%%
%% This is file `ut-thesis.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% ut-thesis.dtx  (with options: `class')
%% 
%% LaTeX2e document class for graduate theses
%% that conform to the formatting requirements of
%% the School of Graduate Studies at the University of Toronto,
%% as of Fall 2020:
%% [https://www.sgs.utoronto.ca/academic-progress/program-completion/formatting]
%% 
%% Copyright (c) 1998-2013 Francois Pitt <fpitt@cs.utoronto.ca>,
%%               2020-2021 Jesse Knight <jesse.knight@mail.utoronto.ca>
%% last updated at 14:30 (EST) on Thu 11 May 2021
%% 
%% This work may be distributed and/or modified under the conditions of
%% the LaTeX Project Public License, either version 1.3c of this license
%% or (at your option) any later version.
%% The latest version of this license is in
%%     http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This work has the LPPL maintenance status "maintained".
%% 
%% The Current Maintainer of this work is
%% Jesse Knight <jesse.knight@mail.utoronto.ca>.
%% 
%% This work consists of the files:
%% - README
%% - ut-thesis.dtx
%% - ut-thesis.ins
%% - ut-thesis.pdf (derived user manual)
%% - ut-thesis.cls (derived class file)
%% 
%% To generate ut-thesis.cls (class file), run: pdflatex ut-thesis.ins
%% To generate ut-thesis.pdf (documentation), run: pdflatex ut-thesis.dtx
%% To use the class, make ut-thesis.cls visible to your LaTeX distribution,
%% by placing ut-thesis.cls either in your working directory,
%% or in your texmf tree, perhaps: $texmf/tex/latex/ut-thesis/ut-thesis.cls
%% and the documentation: $texmf/doc/latex/ut-thesis/ut-thesis.pdf
%% 
%% See version history on GitHub:
%% [https://github.com/jessexknight/ut-thesis]
%% 
\NeedsTeXFormat{LaTeX2e}[1999/12/01]
\ProvidesClass{ut-thesis}
[2021/05/04 v3.0.3 University of Toronto thesis class]
\newcommand{\draftmarkstyle}{\scriptsize\sffamily}
\DeclareOption{draft}{%
  \PassOptionsToClass{\CurrentOption}{book}
  \AtEndOfClass{
    \AtBeginShipout{\AtBeginShipoutUpperLeft{%
      \draftmarkstyle
      \put(+0.125in,            -0.125in-\f@size pt  ){\rlap{DRAFT}}
      \put(-0.125in+\paperwidth,-0.125in-\f@size pt  ){\llap{DRAFT}}
      \put(+0.125in,            +0.125in-\paperheight){\rlap{DRAFT}}
      \put(-0.125in+\paperwidth,+0.125in-\paperheight){\llap{DRAFT}}
      \put(+0.5\paperwidth,+0.125in-\paperheight)%
        {\makebox[0in][c]{\today}}
}}}}
\newlength{\margin@v}
\newlength{\margin@xhi}\setlength{\margin@xhi}{0.0in}
\newlength{\margin@xho}\setlength{\margin@xho}{0.0in}
\DeclareOption{narrowmargins}   {\setlength{\margin@v}{0.75in}}
\DeclareOption{normalmargins}   {\setlength{\margin@v}{1.00in}}
\DeclareOption{widemargins}     {\setlength{\margin@v}{1.25in}}
\DeclareOption{extrawidemargins}{\setlength{\margin@v}{1.50in}}
\DeclareOption{equalmargins}%
  {\setlength{\margin@xho}{0.5\margin@xhi}
   \setlength{\margin@xhi}{0.5\margin@xhi}}
\AtEndOfClass{
  \setlength{\leftmargin}{\dimexpr\margin@v+\margin@xhi}
  \setlength{\rightmargin}{\dimexpr\margin@v+\margin@xho}
  \geometry{
    top      = \margin@v,
    bottom   = \margin@v,
    inner    = \leftmargin,
    outer    = \rightmargin,
    headsep  = \dimexpr 0.5\margin@v - \headheight,
    footskip = \dimexpr 0.5\margin@v,
    marginparwidth = \dimexpr \rightmargin - 0.25in,
    marginparsep   = 0.125in,
}}
\DeclareOption{doublespacing}{%
  \AtEndOfClass{\doublespacing}
}
\DeclareOption{onehalfspacing}{%
  \AtEndOfClass{\onehalfspacing}
}
\DeclareOption{singlespacing}{%
  \AtEndOfClass{\singlespacing}
}
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ExecuteOptions{letterpaper} % book
\ExecuteOptions{normalmargins,onehalfspacing,chapterhead} % ut-thesis
\ProcessOptions
\LoadClass{book}
\RequirePackage{picture}  % for draft mode
\RequirePackage{atbegshi} % for draft mode
\RequirePackage{geometry} % for margins etc.
\RequirePackage{setspace} % for line spacing
\RequirePackage[utf8]{inputenc}

\renewcommand*{\author}  [1]{\gdef\@author{#1}}
\renewcommand*{\title}   [1]{\gdef\@title{#1}}
\newcommand*{\degree}    [1]{\gdef\@degree{#1}}
\newcommand*{\department}[1]{\gdef\@department{#1}}
\newcommand*{\gradyear}  [1]{\gdef\@gradyear{#1}}
\author    {(author)}
\title     {(title)}
\degree    {(degree)}
\department{(department)}
\gradyear  {(gradyear)}
\newcommand{\@romanskip}[1]{\@roman{\if@twoside\numexpr#1-1\else#1\fi}}
\g@addto@macro\frontmatter{\pagenumbering{gobble}\pagestyle{plain}}
\g@addto@macro\mainmatter {\pagenumbering{arabic}\pagestyle{headings}}
\renewcommand*{\maketitle}%
  %{\thispagestyle{empty}
   %\begin{center}
      %\large
      %\singlespacing
      %\null
      %\vfill
      %\textbf{\LARGE{\textsc{\@title}}}
      %\vfill
      %par
      %\vfill
      %{\LARGE \textbf{\@author}}
      %%\vfill
      %\\[2ex]
      %{\@department}\\
%Université de Montréal\\
      %\vfill
      %\vfill
	  %Mémoire présenté en vue de l’obtention du grade de\\
      %{\@degree}\\[1ex]
      %\vfill
      %{\copyright} {\@gradyear}, {\@author}
   %\end{center}
   %{{\pagestyle{empty}\ocleardoublepage}}
  %}
{
    \clearpage \thispagestyle{empty}%
    \begingroup
        \normalfont\normalsize
        \topskip=84\p@  %Espace au haut de la page
        \advance\topskip by -\headsep
        \advance\topskip by -\headheight
        \vskip12\p@\@plus12\p@
        \centerline{\bf\Large\@university}
        \vskip42\p@
        \vtop{\centering
            \bgroup\bf\Large\expandafter\upshape\expandafter{\@title}\@@par\egroup%
            \ifx\@empty\@soustitre\relax
            \else\vtop{
                \large\vrule width0pt height 20pt
                \sl\@soustitre%
            }\fi
            \global\dimen@i=\prevdepth%
        }%
        \prevdepth=\dimen@i
        \vskip-32pt
        \vfill
        \centerline{\rm par}\vskip20pt%
        %\ifx\@empty\authors
            %\dms@erreur\author %on rappelle de définir \author
        %\else %ici, \authors est non vide
            \vtop{\centering
                {\bf\Large\@author}\@@par
                \global\dimen@i=\prevdepth%
            }\relax%
            \prevdepth=\dimen@i
        %\fi
        \vskip18\p@\@plus12\p@
        \vtop{\centering
            {\rm\footnotesize\@department\\
            %\ifx\@empty\@faculty%
                %{Facult\'e des arts et des sciences}
            %\else%
                \@faculty
            %\fi
            \@@par}
        }%Fin du \vtop
    \vfill
        \baselineskip9\p@
        \vtop{\centering\bgroup\rm\small%
            M\'emoire pr\'esent\'e
            %\ifrapport@ Rapport de stage pr\'esent\'e \fi
            %\iftravail@ Travail dirigé pr\'esent\'e   \fi
            %\ifphd@     Th\`ese pr\'esent\'ee         \fi
	    en vue de l'obtention du grade de\\
            \@degree\\
            en\strut\
            \ifx\@empty\@sujet
            \dms@erreur\sujet
            \else
            \@sujet
            \fi
            \ifx\@empty\@orientation\else \\[\baselineskip] Orientation \@orientation\fi
            \egroup%
        }
        \vfill
	\centerline{\rm\ifx\@empty\@date {\MoYrfr}
		\else\@date\fi}
	\@@par
        \vfill
      	\centerline{{\copyright} {\@author}, {\@gradyear}}
        %\copyrightline
    \endgroup
    %\cleardoublepage
   {{\pagestyle{empty}\ocleardoublepage}}
}

\def\university#1{\def\@university{{\normalfont\bf\Large#1}}}
\university{{\bf\Large Universit\'e de Montr\'eal}}

\def\faculty#1{\def\@facultyto{{\normalfont\rm#1}}}

\def\facultyto#1{\def\@facultyto{{\normalfont\rm#1}}}
\facultyto{{\rm Facult\'e des arts et des sciences}}

\let\@faculty=\@facultyto

\def\department#1{\def\@department{{\normalfont\rm#1}}}
\def\@department{ D\'epartement de math\'ematiques et de statistique}

\def\orientation#1{\def\@orientation{{\normalfont\rm\small#1}}}
\def\@orientation{}

\def\sujet#1{\def\@sujet{{\normalfont\rm\small#1}}}
\def\@sujet{}

\def\president#1{\def\@president{{\normalfont\sl#1}}}
\def\@president{}

\def\directeur#1{\def\@directeur{{\normalfont\sl#1}}}
\def\@directeur{}

\def\codirecteur#1{\def\@codirecteur{{\normalfont\sl#1}}}
\def\@codirecteur{}

\def\codirecteurs#1{\def\@codirecteurs{{\normalfont\sl#1}}}
\def\@codirecteurs{}

\def\membrejury#1{\def\@membrejury{{\normalfont\sl#1}}}
\def\@membrejury{}

\def\membresjury#1{\def\@membresjury{{\normalfont\sl#1}}}
\def\@membresjury{}

\def\plusmembresjury#1{\def\@plusmembresjury{{\normalfont\sl#1}}}
\def\@plusmembresjury{}

\def\examinateur#1{\def\@examinateur{{\normalfont\sl#1}}}
\def\@examinateur{}

\def\repdoyen#1{\def\@repdoyen{{\normalfont\sl#1}}}
\def\@repdoyen{}

\def\dateacceptation#1{\def\@dateacceptation{{\normalfont\sl#1}}}
\def\@dateacceptation{}

\def\maketitletwo{
    \cleardoublepage\thispagestyle{empty}
    \begingroup
        \topskip 5pc\relax
        \vskip12\p@\@plus6\p@
        \normalfont\normalsize
        \centerline{\bf\Large\@university}
        \setbox0=\hbox{\rm\@facultyto}
        \centerline{\copy0}
        \nointerlineskip
        \dimen0=\wd0
        \advance\dimen0 by 2pc
        \centerline{\vrule width \dimen0 height -3pt depth 3.3pt}
        \vskip18\p@\@plus12\p@
        \centerline{Ce m\'emoire intitul\'e}
        %\ifrapport@  \centerline{Ce rapport de stage intitul\'e}\fi
        %\iftravail@  \centerline{Ce travail dirig\'e intitul\'e}\fi
        %\ifphd@ {\centerline{Cette th\`ese intitul\'ee}}\fi
        \vskip12\p@\@plus6\p@
        \vtop{
            \centering\bf\large
            \expandafter\upshape\expandafter{\@title}\@@par
            %
   {{\pagestyle{empty}\ocleardoublepage}}
	    \ifx\@soustitre\@empty\else
		\rm\large
		\vskip1pc
		%
		\setbox0=\hbox{\@soustitre}
		\expandafter\upshape\expandafter{\unhbox0}\@@par
		\dimen0=\textwidth\advance\dimen0 by -60pt\relax
	    \fi
            \global\dimen@i\prevdepth%
           }
        \vskip18\p@\@plus12\p@\relax
        \centerline{pr\'esent\'e par}
        %\ifrapport@\centerline{pr\'esent\'e par}\fi
        %\iftravail@\centerline{pr\'esent\'e par}\fi
        %\ifphd@\centerline{pr\'esent\'ee par}\fi
        \vskip18\p@\@plus6\p@
        %\ifx\@empty\authors
	  %\author
        %\else
	    \vtop{
		\centering
		\bf\Large\@author
	    }
	    %\prevdepth\dimen@i
        %\fi
        \vskip24\p@\@plus12\p@
        \centerline{a \'et\'e \'evalu\'e par un jury compos\'e des personnes suivantes :}%
        %\ifrapport@\centerline{a \'et\'e \'evalu\'e par un jury compos\'e des personnes suivantes :} \fi%
        %\iftravail@\centerline{a \'et\'e \'evalu\'e par un jury compos\'e des personnes suivantes :} \fi%
        %\ifphd@\centerline{a \'et\'e \'evalu\'ee par un jury compos\'e des personnes suivantes :}\fi %
        \par\vskip24\p@ plus 12pt minus 12pt\relax
        \baselineskip9\p@
        \vtop to 11cm{\centering%
            \vtop{\centering
                \strut\par\vskip5pt
		\centerline{\small\@president}
                \strut\par\vskip-25pt
                \noindent\vrule height 0.4pt depth 0pt width 11pc
                \par\vskip1pt
                {\footnotesize(pr\'esident-rapporteur)}}%
            %\lignemembre\membre{\@president}\titre{pr\'esident-rapporteur}
            \vfil

                %Obligatoire
            %\lignemembre\membre{\@directeur}\titre{directeur de recherche}
            \vtop{\centering
		\centerline{\@directeur}
                \strut\par\vskip-25pt
                \noindent\vrule height 0.4pt depth 0pt width 11pc
                \par\vskip1pt
                {\footnotesize(directeur de recherche)}}%
            \vfil


                %Obligatoire
            %\lignemembre\membre{\@membrejury}\titre{membre du jury}
            \vtop{\centering
		\centerline{\@membrejury}
                \strut\par\vskip-25pt
                \noindent\vrule height 0.4pt depth 0pt width 11pc
                \par\vskip1pt
                {\footnotesize(membre du jury)}}%
            \vfil

            %
            %\ifx\@membresjury\empty
                \par
                \vskip0pt plus .33fil
            %\fi
            %\ifx\@plusmembresjury\empty
                \par
                \vskip0pt plus .33fil
            %\fi
            %\ifx\@codirecteur\empty
                \par
                \vskip0pt plus .33fil
            %\fi
        }%fin du \vtop to 10cm
    \endgroup
   {{\pagestyle{empty}\ocleardoublepage}}
} % Fin de \@maketitle


\newenvironment*{abstract}%
  {\thispagestyle{plain}
\addcontentsline{toc}{chapter}{Abstract}
   \begin{center}
     \singlespacing
      %{\@title}\\[2ex]
      %{\@author}\\
      %{\@degree}\\[1ex]
      %Département de {\@department}\\
      %Université de Montréal\\
      %{\@gradyear}\\
      \section*{Abstract}
   \end{center}
   \begingroup
   \doublespacing}%
  {\par\endgroup\cleardoublepage}

\newenvironment*{resume}%
  {\thispagestyle{plain}
\addcontentsline{toc}{chapter}{Résumé}
   \begin{center}
     \singlespacing
      %{\@title}\\[2ex]
      %{\@author}\\
      %{\@degree}\\[1ex]
      %Département de {\@department}\\
      %Université de Montréal\\
      %{\@gradyear}\\
      \section*{Résumé}
   \end{center}
   \begingroup
   \doublespacing}%
  {\par\endgroup\clearpage}
\newenvironment*{dedication}%
  {\thispagestyle{plain}
   \null
   \vfill
   \begin{flushright}}%
  {\end{flushright}
   \vfill
   \vfill
   \clearpage}
\newenvironment*{acknowledgements}%
  {\thispagestyle{plain}
\addcontentsline{toc}{chapter}{Remerciements}
   \begin{center}
   \section*{Remerciements}
   \end{center}
   \begingroup}%
  {\endgroup\clearpage}
\let\ocleardoublepage\cleardoublepage
\def\cleardoublepage{{\newpage\pagestyle{plain}\ocleardoublepage}}
\newcommand{\headerstyle}[1]{\footnotesize\MakeUppercase{#1}}
\if@twoside
\renewcommand*{\ps@headings}%
  {\let\@mkboth\markboth
   \def\@oddfoot{\headerstyle{\hfil\thepage\hfil}}%
   \def\@evenfoot{\headerstyle{\hfil\thepage\hfil}}%
   \let\@oddhead\@empty%{\headerstyle{\hfil\rightmark}}%
   \let\@evenhead\@empty%{\headerstyle{\leftmark\hfil}}%
   \def\chaptermark##1{\markboth{%
     \if@mainmatter\headerstyle{\@chapapp\ \thechapter.\ ##1}\fi}{}}
   \def\sectionmark##1{\markright{%
     \if@mainmatter\headerstyle{\thesection.\ ##1}\fi}}}
\else
\renewcommand*{\ps@headings}%
  {\let\@mkboth\markboth
   \let\@oddfoot\@empty
   \let\@evenfoot\@empty
   \def\@oddhead{\headerstyle{\rightmark\hfil\thepage}}%
   \def\chaptermark##1{\markright{%
     \if@mainmatter\headerstyle{\@chapapp\ \thechapter.\ ##1}\fi}}}
\fi
\pagestyle{headings}
\setlength\abovecaptionskip{1ex}
\setlength\belowcaptionskip{1ex}
\setlength{\parskip}{1ex}
\endinput
%%
%% End of file `ut-thesis.cls'.
