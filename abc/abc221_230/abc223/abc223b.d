import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    auto len = S.length;
    auto list = new dchar[][](len);
    list[0] = S;
    foreach (i; 1 .. len) {
        S =  S[1..len] ~ S[0];
        list[i] = S;
    }

    list.sort;
    list[0].writeln;
    list[len-1].writeln;
}