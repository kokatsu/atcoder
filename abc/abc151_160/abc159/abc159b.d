import std;

void main() {
    auto S = readln.chomp.to!(dchar[]);

    bool isStrong = true;

    auto T = S.dup;
    T.reverse;
    isStrong &= (S == T);

    auto len = S.length;

    auto L = S[0..len/2].dup;
    L.reverse;
    isStrong &= (S[0..len/2] == L);

    auto R = S[len/2+1..$].dup;
    R.reverse;
    isStrong &= (S[len/2+1..$] == R);

    writeln(isStrong ? "Yes" : "No");
}