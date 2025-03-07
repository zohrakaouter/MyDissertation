% Cette classe de document est basee sur [report].
% Assurez vous d'avoir installe tous les paquets utiles
%%%%%% Licence%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% la classe LaTeX these-dbl
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This program is free software: you can redistribute it and/or modify
% it under the terms of the GNU General Public License as published by
% the Free Software Foundation
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% PROPOSITION DE TEMPLATE POUR THESE DE DBL par L.YALA (Doctorante
% IRISA-UR1, Juin 2018)
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Revision des en-tetes et prise en compte de [twoside]
% Revision de la gestion de la bibliographie avec BiblaTex
% Ajouts de boites et encarts grises
% revision de l'enchainement des chapitres
% Mise aux normes typographiques suivant les Regles Typographiques
% en usage a l'Imprimerie Nationale
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{these-dbl}[19/03/2023 v6]

\LoadClass[twoside,multicol,12pt,a4paper]{report}	% notez le "twoside", essentiellement pour alterner les en-tete et pieds de page gauche et droit si on veut utliser les fancyhead. 

\RequirePackage[utf8]{inputenc} 
\RequirePackage[english,french]{babel} % Last language is the default, use \selectlanguage{english} to switch
\RequirePackage{ifpdf}
\RequirePackage[usenames,dvipsnames]{color} % pour les couleurs
\RequirePackage{textcomp}
\RequirePackage{titlesec}
\RequirePackage{parcolumns}
\RequirePackage{multicol}
\RequirePackage[T1]{fontenc} % permet de sp\'{e}cifier \`{a} LaTeX l'utilisation du codage de caract\`{e}res T1, nouvelle norme LaTeX non utilis\'{e}e par d\'{e}faut pour des raisons de compatibilit\'{e} avec les anciens documents LaTeX.
\RequirePackage{lmodern} % Assurer une bonne impression!
\RequirePackage{tikz} % tikz est utilise pour tracer des boites, par exemple
\usetikzlibrary{fadings,babel}
\RequirePackage{fix-cm}
\RequirePackage{abstract}
\RequirePackage{graphicx} % Pour ins\'{e}rer des images. Utiliser le format jpg pour plus de simplicit\'{e}.
\RequirePackage{subcaption}
%\RequirePackage{subfigure}
\RequirePackage{sectsty} % obligatoire, pour jouer avec l'apparence des titres
\RequirePackage{shorttoc} % pour le sommaire, au debut.
\RequirePackage{fancyhdr} % Afin de r\'{e}aliser soi-même les en-têtes et pieds de page, voir chaque d\'{e}but de chapitre.
\RequirePackage{pifont} % Pour utiliser des symboles divers.
\RequirePackage{color}
\RequirePackage{comment}
\RequirePackage{wallpaper}
\RequirePackage[inner=30mm,outer=20mm,top=30mm,bottom=20mm]{geometry}
\usepackage{enumitem}
%\usepackage{algpseudocode}
%\usepackage{algorithmic}
\usepackage[vlined,linesnumbered,ruled]{algorithm2e}
%\usepackage{algorithm2e}[ruled]
%\usepackage[linesnumbered, ruled, vlined]
\makeatother
%\algnewcommand\algorithmicswitch{\textbf{switch}}
%\algnewcommand\algorithmiccase{\textbf{case}}\algdef{SE}[SWITCH]{Switch}{EndSwitch}[1]{\algorithmicswitch\ #1\ \algorithmicdo}{\algorithmicend\ \algorithmicswitch}%
%\algdef{SE}[CASE]{Case}{EndCase}[1]{\algorithmiccase\ #1}{\algorithmicend\ \algorithmiccase}%
%\algtext*{EndSwitch}%
%\algtext*{EndCase}%
%Ou bien : \RequirePackage[top=4 cm, bottom=4 cm, left=3 cm, right=3 cm]{geometry} % On peut modifier ces valeurs pour augmenter ou r\'{e}duire les marges. Attention aux en-têtes de chapitres. 
\RequirePackage{epigraph} % \cleartoevenpage

\RequirePackage{setspace} % permet d'utiliser les commandes \spacing, doublespace (double interligne), singlespace (simple interligne) et onehalfspace (un interligne et demi)

\RequirePackage{hyperref} %Utiliser pour une bibliographie interactive + sommaire et TOC interactifs (pour une sortie PDF, par exemple).
\hypersetup{colorlinks=true, citecolor=black, filecolor=black, linkcolor=black, urlcolor=black}

\RequirePackage{eso-pic} % For \AddToShipoutPicture used for cover backgrounds
\RequirePackage{framed} % utilise pour coloriser les encarts
\usepackage{float}
\usepackage{listings}
\usepackage{graphicx,color,soul}
\usepackage{xcolor}
\usepackage[Lenny]{fncychap}
\usepackage{soul}
\setul{0.5ex}{0.3ex}
\definecolor{Red}{rgb}{1,0.0,0.0}
\setulcolor{Red}

\definecolor{forestgreen}{rgb}{0.0, 0.27, 0.13}
\definecolor{plum}{rgb}{0.56, 0.27, 0.52}
%\titleformat*{\subsubsection}{\large\bfseries}
\lstdefinelanguage{Java}{
	morekeywords={abstract, assert, boolean, break,
		byte, case, catch, char,
		class, const, continue, default,
		do, double, else, enum,
		extends, final, finally, float,
		for, goto, if, implements,
		import, instanceof, int, interface,
		long, native, new, package,
		private, protected, public, return,
		short, static, strictfp, super,
		switch, synchronized, this, throw,
		throws, transient, try, void,
		volatile, while, true, false, null},
	keywordstyle=[2]{\textbf},
	keywordstyle={\textbf},
	keywordstyle=\color{plum}\bfseries,
	morecomment=[l]{//}, 
	morecomment=[s]{/*}{*/}, 
	commentstyle=\color{forestgreen},
	morestring=[b]",
	tabsize=4,
	basicstyle=\ttfamily\scriptsize,
	numbers=left,
	numbersep=1pt,
	numberstyle=\footnotesize\color{darkgray},
	stepnumber=1}%TODO basicstyle=\footnotesize
\newcommand{\lstETL}[1]{\lstinline[language=ETL,breaklines=true,basicstyle=\listingsfontinline,mathescape,literate={\-}{}{0\discretionary{-}{}{}}]§#1§}

\lstset{
	escapeinside={(*}{*)}
}



\onehalfspacing %Interligne 1,5

\RequirePackage{ifthen} % Entrer valeurs bool\'{e}ennes et autres options
\RequirePackage{csquotes} % Assurer les guillemets français
\frenchspacing
\FrenchFootnotes

% Define commands to set fonts throughout the document
\newcommand*{\selectfontfrontcover}{\fontfamily{phv}\selectfont}  % Font style used in front cover 
\newcommand*{\selectfontbackcover}{\fontfamily{phv}\selectfont}   % Font style used in back cover 
\newcommand*{\selectfontchapheads}{\fontfamily{phv}\selectfont} % Font style used chapter headings

% Override default font here if you want
%\renewcommand{\rmdefault}{qpl}
%\renewcommand{\sfdefault}{qpl} 

%\usepackage{underscore}
\usepackage[english]{babel}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% CONDITIONAL COMPILATION %%%%%%%%%%%%%%%
\RequirePackage{xparse}
\ExplSyntaxOn
\tl_const:Nn \c_getenv_par_tl { \par }
\NewDocumentCommand{\ifenvsetTF}{mmm}
 {
  \sys_get_shell:nnN { kpsewhich ~ --var-value ~ #1 } { } \l_tmpa_tl
  \tl_if_eq:NNTF \l_tmpa_tl \c_getenv_par_tl { #3 } { #2 }
 }
\ExplSyntaxOff


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% En-tete chap %%%%%%%%%%%%%%%%

\makeatletter
\def\thickhrulefill{\leavevmode \leaders \hrule height 1ex \hfill \kern \z@}
\def\@makechapterhead#1{%
  \vspace*{-30\p@}%
  {\parindent \z@ \raggedleft \reset@font
            \scshape \@chapapp{} \thechapter
        \par\nobreak
        \interlinepenalty\@M
    \selectfontchapheads \Huge \bfseries #1\par\nobreak
    %\vspace*{1\p@}%
    \hrulefill
    \par\nobreak
    \vskip 50\p@
  }}
\def\@makeschapterhead#1{%
 \vspace*{-50\p@}%
  {\parindent \z@ \raggedleft \reset@font
            \scshape \vphantom{\@chapapp{} \thechapter}
        \par\nobreak
        \interlinepenalty\@M
    \selectfontchapheads \Huge \bfseries #1 \par\nobreak
    %\vspace*{1\p@}%
    \hrulefill
    \par\nobreak
    \vskip 30\p@
  }}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% Tete de parties %%%%%%%%%%%%%%%%

\makeatletter
\newcommand*{\jolipart}[1]{%
	\begin{center}
		\begin{Huge}\color{black}
			#1
		\end{Huge}
		\end{center}
		\vspace{1cm}		
	\begin{center}
%\begin{Huge}
		%\ding{167}
	%\end{Huge}	
	\hrulefill
	\end{center}		
	}

\parttitlefont{\jolipart}

\partnumberfont{\sc\normalsize}

\newcommand{\LLM}{ChatGPT}
% Based on https://tex.stackexchange.com/questions/7032/good-way-to-make-textcircled-numbers
%
\usepackage{pict2e,picture}
\pgfkeys{/csteps/inner ysep/.initial=4pt,
	/csteps/inner xsep/.initial=4pt,
	/csteps/inner color/.initial=black,
	/csteps/outer color/.initial=black,
}
\newsavebox\csteps@CBox
\newlength\csteps@XLength \newlength\csteps@YLength \newlength\csteps@YDepth \newlength\csteps@tmplen
\def\csteps@CircledParam#1#2{\sbox\csteps@CBox{#2}%
	\csteps@XLength=\wd\csteps@CBox\advance\csteps@XLength by\pgfkeysvalueof{/csteps/inner xsep}\relax
	\csteps@tmplen=\pgfkeysvalueof{/csteps/inner ysep}\relax
	\csteps@YDepth=\dp\csteps@CBox\advance\csteps@YDepth by 0.5\csteps@tmplen\relax
	\csteps@YLength=\ht\csteps@CBox\advance\csteps@YLength by\dp\csteps@CBox\advance\csteps@YLength by\pgfkeysvalueof{/csteps/inner ysep}\relax
	\typeout{DBG:#2\space X\space\the\csteps@XLength\space Y:\the\csteps@YLength\space D:\the\csteps@YDepth}%
	\raisebox{-#1\csteps@YDepth}{%
		\ifdim\csteps@XLength>\csteps@YLength
		\makebox[\csteps@XLength]{% X bigger than Y
			\makebox(0,\csteps@YLength){%
				\color{\pgfkeysvalueof{/csteps/outer color}}\put(0,0){\oval(\csteps@XLength,\csteps@YLength)}%
			}%
			\makebox(0,\csteps@YLength){%
				\put(-.5\wd\csteps@CBox,0){\textcolor{\pgfkeysvalueof{/csteps/inner color}}{#2}}%
		}}%
		\else
		\makebox[\csteps@YLength]{%
			\makebox(0,\csteps@YLength){%
				\color{\pgfkeysvalueof{/csteps/outer color}}\put(0,0){\circle{\csteps@YLength}}%
			}%
			\makebox(0,\csteps@YLength){%
				\put(-.5\wd\csteps@CBox,0){\textcolor{\pgfkeysvalueof{/csteps/inner color}}{#2}}%
		}}%
		\fi
	}%
}
\def\Circled#1{\csteps@CircledParam{1}{#1}}
%\def\CircledTop#1{\csteps@CircledParam{0}{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% REGLAGE DE LA BIBLIOGRAPHIE %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% ATTENTION, on utilise Biblatex %%%%%%%%%%%%%

% Les dernieres versions de biblatex pr\'{e}conisent l'option backend=biber
% pour profiter des derni\`{e}res nouveaut\'{e}s. Si vous choisissez cette
% option, il vous faut simplement compiler avec $biber nomdufichier (sans le
% .tex). Pour utiliser bibtex, remplacer par backend=bibtex.
\RequirePackage[hyperref,backend=biber,
  % Exemples de styles: alphabetic, ieee, nature, numeric, verbose-trad1 (en utilisant \footcite{}).
  % https://www.overleaf.com/learn/latex/Biblatex_bibliography_styles
  style=ieee %verbose-trad1
  ]{biblatex}

% Style biblatex avec gestion des mots cl\'{e}s des entr\'{e}es bibliographiques
% + les abbr\'{e}viations idem, ibidem, op cit. Pr\'{e}voir un fichier bib
% contenant ces mots-cl\'{e}s, ici primary et secondary.
\defbibheading{primary}{\section*{Sources primaires}}
\defbibheading{secondary}{\section*{Sources secondaires}}


%%%% Ajustements pour la bibliographie

\renewcommand*{\newunitpunct}{\addcomma\space} % Virgule entre les parties d'une reference (merci a Josquin Debaz)

%\DeclareFieldFormat[article]{volume}{\textbf{#1}}  %Le numero de volume en gras
\DeclareFieldFormat[article]{number}{\textit{#1}} %Le numero dans le volume en italique
%\DeclareFieldFormat{pages}{page(s): #1} % page(s) en toutes lettres, si on veut...

% Locutions latines en italique (comme ibid, loc.cit. , etc.) Merci \`{a} Josquin Debaz
%\renewcommand{\mkibid}[1]{\emph{#1}}

% Et pour mettre le in en italique dans la ref\'{e}rence biblio (merci encore \`{a} Josquin Debaz)
\DefineBibliographyStrings{english}{%
        in = {\emph{in}}%
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% Interligne simple pour citations et vers %%%%%%%%%%%%%%%%%%
%% Environnements: QUOTE, QUOTATION, VERSE
% Copyright (C) 2002 Mike Nolta <mrnolta@princeton.edu>, GPL V. 2.0 and
% later version. http://www.physics.princeton.edu/cosmology/computing/PrincetonThesis.cls
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\let\orig@quote\quote
\let\endorig@quote\endquote
\renewenvironment*{quote}
	{\begin{orig@quote}\begin{singlespace}}
	{\end{singlespace}\end{orig@quote}}

\let\old@quotation\quotation
\let\endold@quotation\endquotation
\renewenvironment*{quotation}
	{\begin{old@quotation}\begin{singlespace}}
        {\end{singlespace}\end{old@quotation}}

\let\old@verse\verse
\let\endold@verse\endverse
\renewenvironment*{verse}
	{\begin{old@verse}\begin{singlespace}}
        {\end{singlespace}\end{old@verse}}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% VARIABLES PAGE DE GARDE %%%%%%%%%%%%%%%%

%%%%% Dossier contenant les info de l'ecole doctorale
\newcommand*{\direcole}[1]{\gdef\vdirecole{./Couverture-these/ecoles-doctorales/#1}}
\direcole{}

%%%%% Nom ecole, une variable par ligne
\newcommand{\nomecoleA}[1]{\gdef\@nomecoleA{#1}}
\nomecoleA{}
\newcommand{\nomecoleB}[1]{\gdef\@nomecoleB{#1}}
\nomecoleB{}

%%%%% Numero ecole doctorale
\newcommand{\numeroecole}[1]{\gdef\@numeroecole{#1}}
\numeroecole{}

%%%% Etablissement delivrant le diplome, une variable par ligne
\newcommand{\nometablissementA}[1]{\gdef\vnometablissementA{#1}}
\nometablissementA{}
\newcommand{\nometablissementB}[1]{\gdef\vnometablissementB{#1}}
\nometablissementB{}
\newcommand{\nometablissementC}[1]{\gdef\vnometablissementC{#1}}
\nometablissementC{}
\newcommand{\nometablissementD}[1]{\gdef\vnometablissementD{#1}}
\nometablissementD{}
\newcommand{\nometablissementE}[1]{\gdef\vnometablissementE{#1}}
\nometablissementE{}

%%%% Logos etablissement delivrant le diplome, supporte deuble affiliation
\newcommand*{\logoetablissementA}[1]{\gdef\vlogoetablissementA{#1}}
\logoetablissementA{}
\newcommand*{\logoetablissementB}[1]{\gdef\vlogoetablissementB{#1}}
\logoetablissementB{}

%%%% Hauteur des logos, variable selon les (double) affiliations
\newcommand*{\hauteurlogoecole}[1]{\gdef\vhauteurlogoecole{#1}}
\hauteurlogoecole{2cm}
\newcommand*{\hauteurlogoetablissementA}[1]{\gdef\vhauteurlogoetablissementA{#1}}
\hauteurlogoetablissementA{}
\newcommand*{\hauteurlogoetablissementB}[1]{\gdef\vhauteurlogoetablissementB{#1}}
\hauteurlogoetablissementB{2cm}

%%%% Eventuel sous-titre
\newcommand{\lesoustitre}[1]{\gdef\@lesoustitre{#1}}
\lesoustitre{}

%%%% Discipline
\newcommand{\discipline}[1]{\gdef\@discipline{#1}}
\discipline{}

%%%% Jury
\newcommand{\jury}[1]{\gdef\@jury{#1}}
\jury{}

%%%%% Sp\'{e}cialit\'{e}
\newcommand{\spec}[1]{\gdef\@spec{#1}}
\spec{}

%%% Ville de soutenance
\newcommand{\lieu}[1]{\gdef\@lieu{#1}}
\lieu{}

%%% Unite de recherche: laboratoire / department / unit\'{e}
\newcommand{\uniterecherche}[1]{\gdef\@uniterecherche{#1}}
\uniterecherche{}

%%% Num\'{e}ro de la th\`{e}se
\newcommand{\numthese}[1]{\gdef\@numthese{#1}}
\numthese{}

%%% Couleur de la police de la page de garde
\newcommand{\couleurpolice}[1]{\gdef\@couleurpolice{#1}}
\couleurpolice{black}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% PAGE DE GARDE %%%%%%%%%%%%%%%%

% Define some font sizes specific to the covers, supposed to be in 12pt
\newcommand{\HugeTwelve}{\fontsize{26}{31}\selectfont} % 12pt \Huge
\newcommand{\LARGETwelve}{\fontsize{20.74}{25}\selectfont} % 12pt \LARGE
\newcommand{\LargeTwelve}{\fontsize{16}{19}\selectfont} % 12pt \Large
\newcommand{\largeTwelve}{\fontsize{14.4}{17}\selectfont} % 12pt \large
\newcommand{\normalTwelve}{\fontsize{12}{13.2}\selectfont} % 12pt \normalsize
\newcommand{\smallTwelve}{\fontsize{11}{13.5}\selectfont} % 12pt \small
\newcommand{\footnotesizeTwelve}{\fontsize{9.5}{11}\selectfont} % 12pt \footnotesize

% Affiche les logos sur les pages de couverture
\newcommand{\displayLogos}{%
  \thispagestyle{empty}
  \begin{tikzpicture}[remember picture,overlay,line width=0mm]
    \node[xshift=6.2cm,yshift=2cm] {%
    \parbox{\textwidth}{%
      % Quand UR1 est l'unique etablissement, il ne faut afficher que son logo
      {\ifthenelse{\equal{\vlogoetablissementA}{}\and\equal{\vlogoetablissementB}{UR1-noir}}{
        $\vcenter{\hbox{%
          \includegraphics[keepaspectratio,height=\vhauteurlogoetablissementB,width=7cm
          ]{./Couverture-these/logos-etablissements/\vlogoetablissementB}%
        }}$
      }{%
        $\vcenter{\hbox{%
          \includegraphics[keepaspectratio,height=\vhauteurlogoecole,%width=7cm
          ]{\vdirecole/logo}%
        }}$
        \hfill
        {\if\vlogoetablissementA\empty \else
          $\vcenter{\hbox{%
            \includegraphics[keepaspectratio,height=\vhauteurlogoetablissementA,width=7cm
            ]{./Couverture-these/logos-etablissements/\vlogoetablissementA}%
          }}$
        \fi}%
        \hspace{3mm}
        $\vcenter{\hbox{%
          \includegraphics[keepaspectratio,height=\vhauteurlogoetablissementB,width=7cm
          ]{./Couverture-these/logos-etablissements/\vlogoetablissementB}%
        }}$
      }}%
  
    }%
  };
  \end{tikzpicture}
  \par\nobreak
}

%mise en page de la page de garde
\makeatletter
\def\maketitle{%
  \thispagestyle{empty}
  \clearpage
  % Background image of the front cover
  \AddToShipoutPicture*{%
    \put(0,0){%
    \parbox[b][42.6cm]{\paperwidth}{%
        
%        \includegraphics[width=\paperwidth,keepaspectratio,trim={0 5pt 0 0}]{\vdirecole/image-fond-garde.png} % Must trim white border off of bottom
%        \begin{tikzpicture}
%            \fill[couleur-ecole-recto] (0,0) rectangle (\paperwidth,4.4);
%        \end{tikzpicture}
		\input{./Couverture-these/cover_tikz}
    \vspace{10cm}
  }}}
  \displayLogos
  %
  \begin{tikzpicture}[remember picture,overlay,line width=0mm]
   \node at (current page.center)
{\parbox{17.6cm}{
\vspace{3.6cm}

\selectfontfrontcover % Set font style for front cover page

{\HugeTwelve \textsc{Th\`{e}se de doctorat de} \\}

\color{\@couleurpolice} % Some schools use white font

% \vspace{5mm}
{\normalTwelve \if\@nomecoleB\empty ~\\ \else \fi} % To compensate the 2 lines of MathSTIC
{\setlength{\baselineskip}{0.9\baselineskip}
{\largeTwelve \if\vnometablissementA\empty ~ \else \textsc{\vnometablissementA} \fi} \\
{\largeTwelve \if\vnometablissementB\empty ~ \else \textsc{\vnometablissementB} \fi} \\
{\largeTwelve \if\vnometablissementC\empty ~ \else \textsc{\vnometablissementC} \fi} \\
{\largeTwelve \if\vnometablissementD\empty ~ \else \textsc{\vnometablissementD} \fi} \\
{\largeTwelve \textsc{\vnometablissementE}} \\
\par}
\vspace{0.01cm}
{\setlength{\baselineskip}{0.7\baselineskip}
{\smallTwelve \textsc{\'{E}cole Doctorale \No \@numeroecole}} \\
{\normalTwelve \textit{\@nomecoleA}} \\
{\normalTwelve \if\@nomecoleB\empty \else \textit{\@nomecoleB} \\ \fi}
{\normalTwelve Sp\'{e}cialit\'{e} : \textit{\@spec}}

%\fontsize{12}{10}\selectfont
\vspace{0.5cm}
\hspace{0.6cm}{\normalTwelve Par \vspace{0.15cm}}
\par}
\hspace{0.6cm}{\LARGETwelve \textbf{\@author}} \vspace{0.5cm}

{\LargeTwelve \textbf{\@title}} \vspace{0.5cm}
	
{\largeTwelve \@lesoustitre} \vspace{0.5cm}
\begin{spacing}{1}
	 \smallTwelve
	 \textbf{Th\`{e}se pr\'{e}sent\'{e}e et soutenue \`{a} \@lieu, le \@date} \\
	 \textbf{Unit\'{e} de recherche : \@uniterecherche} \\
	 \textbf{\if\@numthese\empty \else Th\`{e}se \No : \@numthese \fi} % Hide line if no number provided
\end{spacing}
\color{black}
\vspace{1.3cm}
	\begin{small}
	\begin{spacing}{1}
		 \@jury
	\end{spacing}
	\end{small}
}
};
\end{tikzpicture}
}

\makeatother



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% QUATRIEME DE COUVERTURE %%%%%%%%%%%%%%%%

\newcommand{\backcoverheader}{%
\thispagestyle{empty}
\AddToShipoutPicture*{%
%    \put(0,0){%
%    \parbox[t][\paperheight]{\paperwidth}{%
%        \vspace{-29.6cm}
%        \includegraphics[width=\paperwidth,height=\paperheight,keepaspectratio]{\vdirecole/image-fond-dos}%
%    }}
%    \put(0,0){%
%    \parbox[t][\paperheight]{\paperwidth}{%
%        \vspace{-16.55cm}
%        \includegraphics[width=\paperwidth,height=\paperheight,keepaspectratio]{\vdirecole/image-fond-dos2}%
%    }}
	\put(0,0){%
	\parbox[t][\paperheight]{\paperwidth}{%
        \vspace{-33.1cm}
		\input{./Couverture-these/backcover_tikz}
	}}
}
\hspace{9mm}
\displayLogos
}

\newcommand{\titleFR}[1]{%
\vspace{1cm}
{\centering \noindent \textcolor{couleur-ecole-verso}{\rule{\textwidth}{0.2cm}}}
\vspace{-1cm}
\selectlanguage{french}
\section*{\selectfontbackcover\smallTwelve \textcolor{couleur-ecole-verso}{Titre : }{\selectfontbackcover\mdseries{#1}}} % In this particular case, font style needs to get re-selected locally
}

\newcommand{\keywordsFR}[1]{%
\vspace{-0.2cm}
\noindent{\smallTwelve \textbf{Mot cl\'{e}s : }#1}
}

\newcommand{\abstractFR}[1]{%
\vspace{-0.2cm}
\begin{multicols}{2}
\begin{spacing}{1}
	\noindent\smallTwelve \textbf{R\'{e}sum\'{e} : }#1
\end{spacing}
\end{multicols}
}

\newcommand{\titleEN}[1]{%
\vspace{0.5cm}
{\centering \noindent \textcolor{couleur-ecole-verso}{\rule{\textwidth}{0.2cm}}}
\vspace{-1cm}
\selectlanguage{english}
\section*{\selectfontbackcover\smallTwelve \textcolor{couleur-ecole-verso}{Title: }{\selectfontbackcover\mdseries{#1}}} % In this particular case, font style needs to get re-selected locally
}

\newcommand{\keywordsEN}[1]{%
\vspace{-0.2cm}
\noindent{\smallTwelve \textbf{Keywords: }#1}
}

\newcommand{\abstractEN}[1]{%
\vspace{-0.2cm}
\begin{multicols}{2}
\begin{spacing}{1}
	\noindent\smallTwelve \textbf{Abstract: }#1
\end{spacing}
\end{multicols}
}



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% EN-TETES PAGES %%%%%%%%%%%%%%%%

%%%%%%%%% Pour suppirmer les entetes et pied de page gênants par exemple juste avant un chapitre sur une page de droite
\newcommand{\clearemptydoublepage}{%
   \newpage{\pagestyle{empty}\cleardoublepage}}
%%%% .... et utiliser la commande \clearemptydoublepage juste avant le \chapter


\fancyhf{}                       % on annule le fancy automatique
   

%%%%%%%%%% Gerer les en tetes dans les frontmatter mainmatter et backmatter
\RequirePackage{geometry}
\RequirePackage{etoolbox}

\appto\frontmatter{\pagestyle{fancy}
\renewcommand{\sectionmark}[1]{}
\renewcommand{\chaptermark}[1]{\markboth{\textit{#1}}{}}
\fancyhead[LE,RO]{\small\thepage}
    \fancyhead[RO]{\small\leftmark}   % \rightmark = section courante
    \fancyhead[LE]{\small\leftmark} % \leftmark = chapitre courant
    \fancyfoot[C]{\thepage}               % marque la page au centre
}

\appto\mainmatter{\pagestyle{fancy}
\renewcommand{\sectionmark}[1]{\markright{\textit{\thesection.\ #1}}}
\renewcommand{\chaptermark}[1]{\markboth{\chaptername~\thechapter~--\ \textit{#1}}{}}
\fancyhead[LE,RO]{\small\thepage}
    \fancyhead[RO]{\small\rightmark}   % \rightmark = section courante
    \fancyhead[LE]{\small \thepart \leftmark} % \leftmark = chapitre courant
    \fancyfoot[C]{\thepage}               % marque la page au centre
}     

\appto\backmatter{\pagestyle{fancy}
\renewcommand{\sectionmark}[1]{\markright{\thesection.\ #1}}
\renewcommand{\chaptermark}[1]{\markboth{\chaptername~\thechapter~--\ #1}{}}
\fancyhead[LE,RO]{\small\thepage}
    \fancyhead[RO]{}   % \rightmark = section courante
    \fancyhead[LE]{} % \leftmark = chapitre courant
    \fancyfoot[C]{\thepage}               % marque la page au centre

} 



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%% FAIRE DES ENCARTS %%%%%%%%%%%%%%%%

\definecolor{fondtitre}{RGB}{85,85,85}
\definecolor{fonddeboite}{RGB}{232,232,232}
\definecolor{shadecolor}{RGB}{232,232,232}

\ProcessOptions

%%%%%%%%%% Boitemagique  %%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand*{\boitemagique}[2]{
\begin{center}
\begin{tikzpicture}
% la boite
\node[rectangle,draw=fondtitre!100,fill=fonddeboite!100,inner sep=10pt, inner ysep=20pt] (mabox)
{
\begin{minipage}{12cm}
#2
\end{minipage}
};
% le titre de la boite
\node[fill=fondtitre!100, text=white, rectangle] at (mabox.north) {\sffamily\textbf{#1}};
\end{tikzpicture}
\end{center}
}

%%%%%% boitesimple %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\newcommand*{\boitesimple}[1]{%
\begin{center}
\begin{minipage}{12cm}
\begin{shaded}
	#1
\end{shaded}
\end{minipage}
\end{center}
}
\usepackage{tcolorbox}

\def\BibTeX{{\rm B\kern-.05em{\sc i\kern-.025em b}\kern-.08em
		T\kern-.1667em\lower.7ex\hbox{E}\kern-.125emX}}

\usepackage[figuresright]{rotating}
\usepackage{adjustbox}
\sloppy
%\usepackage{slopp}
%\usepackage{sloppypar} not found
\definecolor{greycolor}{RGB}{224,224,224}
\definecolor{darkgreycolor}{RGB}{192,192,192}
\usepackage{microtype}
\tcbuselibrary{skins}
\usetikzlibrary{shadings}
\newcounter{example}
\colorlet{colexam}{red!75!black}
\tcbset{
	base/.style={
		empty,
		frame engine=path,
		colframe=yellow!10,
		sharp corners,
		title={ Replication: \thetcbcounter},
		attach boxed title to top left={yshift*=-\tcboxedtitleheight},
		boxed title style={size=minimal, top=4pt, left=4pt},
		coltitle=colexam,fonttitle=\large\bfseries\sffamily,
	}
}
\newtcolorbox[use counter=example]{myexamplea}{%
	base,
	boxed title style={overlay={
			\draw[colexam,line width=3pt,] (frame.north west)--(frame.north east);
	}},
	colback=colexam,
	overlay unbroken={
		\draw[colexam] ([yshift=-1.5pt]title.north east)--([xshift=-0.5pt, yshift=-1.5pt]title.north-|frame.east);
	},
}
\newtcolorbox[use counter=example]{myexampleb}{%
	base,
	drop fuzzy shadow,
	borderline west={3pt}{-3pt}{colexam},
}
\newtcolorbox[use counter=example]{myexamplec}{%
	base,
	drop fuzzy shadow,
	coltitle=black,
	borderline west={3pt}{-3pt}{greycolor!50},
	attach boxed title to top left={xshift=-3mm, yshift*=-\tcboxedtitleheight/2},
	boxed title style={right=3pt, bottom=3pt, overlay={
			\draw[draw=darkgreycolor!70, fill=greycolor!70, line join=round]
			(frame.south west) -- (frame.north west) -- (frame.north east) --
			(frame.south east) -- ++(-2pt, 0) -- ++(-2pt, -4pt) --
			++(-2pt, 4pt) -- cycle;
	}},
	overlay unbroken={
		\scoped \shade[left color=greycolor!10!black, right color=greycolor]
		([yshift=-0.2pt]title.south west) -- ([xshift=-1.5pt, yshift=-0.2pt]title.south-|frame.west) -- ++(0, -6pt) -- cycle;
	},
}