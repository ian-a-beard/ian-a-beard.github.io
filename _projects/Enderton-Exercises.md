---
layout: page
title: Enderton Logic Solutions
description: My solutions to Enderton's book "Introduction to mathematical logic"
importance: 1
category: math
---

The following are my solutions to all exercises from the logic book by Enderton. All solutions are my own and reflect my understanding of the material as I read the textbook over the course of 14 weeks.
# Chapter 1, Sentential Logic
### Section 1.1
##### Exercise 1
Give three sentences in English together with translations into our formal language. The sentences should be chosen so as to have an interesting structure, and the translations should each contain 15 or more symbols.

We let $A,B,\ldots,Z$ be the first 26 sentence symbols.

**English Sentence 1:**
If someone is a cowboy, then they ride a horse, herd cattle, live in the American southwest, and drink whiskey.

Translation of sentence symbols:
$C = \textrm{a person is a cowboy}$
$R = \textrm{the person rides a horse}$
$H = \textrm{the person herds cattle}$
$A = \textrm{the person lives in the American southwest}$
$W = \textrm{the person drinks whiskey}$

Translations of the english sentence:
$(C\to (R\land(H\land(A\land W))))$

**English Sentence 2:**
If the suspect is guilty of an offense and either the suspect is not a previous offender or the offense is not severe, then their punishment is less harsh.

Translation of sentence symbols:
$G = \textrm{the suspect is guilty of an offense}$ 
$P = \textrm{the suspect is a previous offender}$
$S = \textrm{the offense is severe}$ 
$L = \textrm{the punishment is less harsh}$ 

Translation of the english sentence:
$((G\land ((\lnot P)\lor (\lnot S)))\to L)$ 

**English Sentence 3:**
If an animal is not both black and white then it is neither a zebra nor a holstein cow.

Translation of sentence symbols:
$B = \textrm{the animal is black}$
$W = \textrm{the animal is white}$
$Z = \textrm{the animal is a zebra}$
$H = \textrm{the animal is a holstein cow}$ 

Translation of the english sentence:
$((\lnot (B\land W))\to ((\lnot Z)\land (\lnot H)))$

##### Exercise 2
Show that there are no wffs of length 2, 3, or 6, but that any other positive length is possible.

Suppose $\alpha$ is a wff of length $2$, and $\langle \varepsilon_1,\ldots,\varepsilon_n\rangle$ is it's construction sequence. 
We have that $\alpha = \varepsilon_n$, where $\varepsilon_n$ is one of the three possibilities
1) $\varepsilon_n$ is a sentence symbol
2) $\varepsilon_n = \varepsilon_\lnot(\varepsilon_j)$        where $j<n$
3) $\varepsilon_n = \varepsilon_\square(\varepsilon_j,\varepsilon_k)$      where $j,k <n$ and $\square$ is one of $\land,\lor,\to,\leftrightarrow$ 

If $\varepsilon_n$ is a sentence symbol then $\alpha$ has length $1$, a contradiction. Thus, $\varepsilon_n$ is not a sentence symbol. 

If $\varepsilon_n = \varepsilon_\lnot(\varepsilon_j)$ then since $\varepsilon_j =\beta$ must have length at least $1$, $\alpha = \varepsilon_\lnot(\varepsilon_j) = (\lnot\beta)$ has length at least $4$, a contradiction.

Thus $\varepsilon_n = \varepsilon_\square(\varepsilon_j,\varepsilon_k)$ where $j,k < n$ and $\square$ is one of $\land,\lor,\to,\leftrightarrow$ 
Since $\varepsilon_j = \beta$ and $\varepsilon_k = \gamma$ have length at least $1$, $\alpha = \varepsilon_\square(\varepsilon_j,\varepsilon_k) = (\beta\square\gamma)$ will have length at least $5$, another contradiction.

Therefore, it is impossible for $\alpha$ to have length $2$.

The previous argument can be repeated exactly to show that there are no wffs of length $3$.

Now, suppose that $\alpha$ is a wff of length $6$, and $\langle \varepsilon_1,\ldots,\varepsilon_n\rangle$ is its construction sequence.

Obviously, $\alpha$ is not a sentence symbol. If $\varepsilon_n = \varepsilon_\lnot(\varepsilon_j)$ and $\varepsilon_j =\beta$, then $\alpha = \varepsilon_\lnot(\varepsilon_j) = (\lnot\beta)$ having length $6$ implies that $\beta$ must have length $3$. But this is impossible, since we know there are no wffs with length $3$.

Thus, it must be that $\varepsilon_n = \varepsilon_\square(\varepsilon_j,\varepsilon_k)$. Since $\varepsilon_j = \beta$ and $\varepsilon_k = \gamma$ are wffs, we have that $\alpha = (\beta\square\gamma)$, so that the concatenation $\beta\gamma$ is of length $3$. Since wffs must be of length at least $1$, we must have either $\beta$ or $\gamma$ of length $2$. But this is a contradiction, since there are no wffs of length $2$. 

Therefore, there are no wffs of length $6$.

Now, all that remains to be seen is that there are wffs of all positive lengths besides $2,3$ and $6$. Obviously, there exists wffs of length $1$ since sentence symbols are wffs.
Since negation of a wff of length $k$ yields a new wff with length $k+3$, we know that there exists wffs of lengths $1,4,7,10,\ldots$ given by
$$A_1\quad(\lnot A_1)\quad (\lnot(\lnot A_1))\quad (\lnot(\lnot(\lnot A_1)))$$
Now consider the wff $(A_1\land A_2)$ which has length $5$. Through repeated negation of this wff as in the above step, we get wffs with lengths $5,8,11,14,\ldots$ 

The only remaining step is to show that there exists wffs of lengths $9,12,15,18,\ldots$
These can be obtained by considering the wff $(A_1\lor(A_2\land A_3))$ which has length $9$, and performing repeated negations as above.

Therefore, there exists wffs with length $k$ for any positive integer $k$ besides $2,3$ and $6$.

##### Exercise 3
Let $\alpha$ be a wff; let $c$ be the number of places at which binary connective symbols $(\land,\lor,\to,\leftrightarrow)$ occur in $\alpha$; let $s$ be the number of places at which sentence symbols occur in $\alpha$. (For example, if $\alpha$ is $(A\to(\lnot A))$ then $c=1$ and $s=2$.) Show by using the induction principle that $s = c+1$.

For an arbitrary formula $\alpha$, let $s[\alpha]$ denote the number of binary connective symbols which occur in $\alpha$, and let $c[\alpha]$ denote the numbber of places at which sentence symbols occur in $\alpha$.
Let $S$ denote the set of wffs such that if $\alpha\in S$ then $s[\alpha] = c[\alpha] + 1$.

The goal is to show that $S$ contains *all* wffs. To show this, I show that $S$ contains all the sentence symbols and is closed under all 5 sentence building operations. By the induction principle, this will mean that $S$ is the set of all wffs.

Consider $A_i$ an arbitrary sentence symbol. Since $s[A_i] = 1$ and $c[A_i] = 0$, it is clear that $s[A_i] = c[A_i] + 1$. Thus, $A_i \in S$ for all integers $i\geq 1$.

Now suppose that $\alpha,\beta\in S$. Then we have that $s[\alpha] + s[\beta] = c[\alpha] + c[\beta] + 2$. 
We consider $(\alpha\square\beta)$ where $\square$ is one of $\land,\lor,\to,\leftrightarrow$.
Then $s[(\alpha\square\beta)] = s[\alpha] + s[\beta]$ and $c[(\alpha\square\beta)] = c[\alpha] + c[\beta] + 1$ 
The equation established earlier then implies that $s[(\alpha\square\beta)] = c[(\alpha\square\beta)] + 1$, so that $(\alpha\square\beta)\in S$ 

Therefore, by the induction principle, $S$ is the set of all wffs.

##### Exercise 4
Assume we have a construction sequence ending in $\varepsilon_n$, where $\varepsilon_n$ does not contain the symbol $A_4$. Suppose we delete all the expressions in the construction sequence that contain $A_4$. Show that the result is still a legal construction sequence.

Let $C = \langle \varepsilon_1,\ldots,\varepsilon_n\rangle$ be the construction sequence.
Let $C' = \langle \varepsilon_{k_1},\ldots,\varepsilon_{k_m}\rangle$ be the same sequence but with all expressions containing $A_4$ deleted and re-indexed. We have that $m\geq 1$ since $\varepsilon_n$ does not contain $A_4$, and that $\varepsilon_{k_m} = \varepsilon_n$ 

Consider $\varepsilon_{k_i}$ an arbitrary element in the sequence $C'$. Since $\varepsilon_{k_i}$ is also a member of the original construction sequence $C$, we have the following three cases to consider.
###### Case 1: $\varepsilon_{k_i}=\varepsilon_\lnot(\varepsilon_{j})$ for some $j < k_i$  
Since $\varepsilon_{k_i}$ contains no $A_4$ symbol and the operation of logical negation does not add an $A_4$ symbol, it must be that $\varepsilon_j$ does not contain $A_4$ either. Thus, $\varepsilon_j$ is present in the sequence $C'$, meaning $\varepsilon_{k_i} = \varepsilon_\lnot(\varepsilon_{k_r})$ for some $r < i$ 

###### Case 2: $\varepsilon_{k_i} = \varepsilon_\square(\varepsilon_j,\varepsilon_r)$ for some $j,r<k_i$, where $\square$ is one of $\to,\leftrightarrow,\land,\lor$ 
Since $\varepsilon_{k_i}$ contains no $A_4$ symbol, and the operation $\varepsilon_\square(\cdot,\cdot)$ does not introduce an $A_4$ symbol, it must be that $\varepsilon_j$ and $\varepsilon_r$ do not contain $A_4$. Thus, $\varepsilon_j$ and $\varepsilon_r$ are present in the sequence $C'$, meaning $\varepsilon_{k_i} = \varepsilon_\square(\varepsilon_{k_s},\varepsilon_{k_p})$ where $s,p < i$.

###### Case 3: $\varepsilon_{k_i}$ is a sentence symbol
This case requires no further attention, we already know it does not contain $A_4$

From considering the arbitrary symbol $\varepsilon_{k_i}$ from $C$ as a member of its parent sequence $C'$, we see that it follows the rules established for legal construction sequences. Thus, $C'$ is a legal sequence.

##### Exercise 5
Suppose that $\alpha$ is a wff not containing the negation symbol $\lnot$ 

Claim: The length of $\alpha$ is odd

Throughout the problem I use $\square$ to denote an arbitrary choice of $\land,\lor,\to,\leftrightarrow$ 

Let $\langle \varepsilon_1,\ldots,\varepsilon_n\rangle$ be its corresponding construction sequence. If $n=1,2$ then the claim is obvious, since $\alpha$ not containing the $\lnot$ symbol implies that $\varepsilon_1$ and $\varepsilon_2$ are sentence symbols. Assume $n > 2$. I prove the claim inductively. If $\varepsilon_3$ is a sentence symbol, then certainly $\varepsilon_3$ has odd length. If $\varepsilon_3 = \varepsilon_\square(\varepsilon_1,\varepsilon_2)$, then $\varepsilon_3 = (\varepsilon_1\square\varepsilon_2)$ has odd length since $\varepsilon_1$ and $\varepsilon_2$ have odd length. Thus, $\varepsilon_3$ has odd length. Now, assume $\varepsilon_1,\ldots,\varepsilon_k$ have odd length. If $\varepsilon_{k+1}$ is a sentence symbol then it is obviously of odd length. On the other hand, if $\varepsilon_{k+1} = \varepsilon_\square(\varepsilon_i,\varepsilon_j)$ where $i,j < k+1$, then $\varepsilon_{k+1} = (\varepsilon_i\square\varepsilon_j)$ has odd length. Therefore $\varepsilon_{k+1}$ has odd length. From this argument it follows that the last construction step of $\alpha$, that is $\varepsilon_n$, has odd length, and thus $\alpha$ has odd length.

Claim: More than a quarter of the symbols in $\alpha$ are sentence symbols.

To show this, I will first show that the length of $\alpha$ is of the form $4k+1$ for some integer $k$, and that $\alpha$ contains $k+1$ sentence symbols.

As before, $\varepsilon_1$ and $\varepsilon_2$ must be sentence symbols, so they have length $1$. Since they contain $1$ sentence symbols, it's clear that $\varepsilon_1$ and $\varepsilon_2$ have lengths of the form $4k+1$ and contain $k+1$ sentence symbols, where $k=0$. Now, assume that $\varepsilon_1,\ldots,\varepsilon_j$ have lengths of the form $4k+1$ and contain $k+1$ sentence symbols. If $\varepsilon_{j+1}$ is a sentence symbol then we already know it is also of this form. On the other hand, consider the case where $\varepsilon_{j+1} = \varepsilon_\square(\varepsilon_r,\varepsilon_s)$ for some $r,s < j+1$. Assume that $\varepsilon_r$ has length $4q + 1$ for some integer $q$, and thus contains $q+1$ sentence symbols. Assume that $\varepsilon_s$ has length $4p+1$ for some integer $p$, and thus contains $p+1$ sentence symbols. Notice that $\varepsilon_{j+1} = (\varepsilon_r\square\varepsilon_s)$ then contains $q + p + 2$ sentence symbols, and is of length $4q + 1 + 4p + 1 + 3 = 4(q +p+1) + 1$. We notice that $\varepsilon_{j+1}$ has length of the form $4k + 1$ and $k+1$ sentence symbols where $k = q + p + 1$. By induction, this argument yields that $\varepsilon_n = \alpha$ has length of the form $4k+1$ and $k+1$ sentence symbols. Since $k+1 > \frac{4k+1}{4}$, it's clear that more than a quarter of the symbols in $\alpha$ are sentence symbols.
