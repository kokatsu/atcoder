import std;

void main() {
    string S;
    readf("%s\n", S);

    string S1 = S[0..2], S2 = S[2..$];

    bool YYMM, MMYY;
    if ("01" <= S1 && S1 <= "12") MMYY = true;
    if ("01" <= S2 && S2 <= "12") YYMM = true;

    string res = "NA";
    if (YYMM && MMYY) res = "AMBIGUOUS";
    if (YYMM && !MMYY) res = "YYMM";
    if (!YYMM && MMYY) res = "MMYY";

    res.writeln;
}