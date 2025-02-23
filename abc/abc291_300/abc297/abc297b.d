import std;

void main() {
    string S;
    readf("%s\n", S);

    ulong[] B, R;
    ulong K;
    foreach (i, c; S) {
        if (c == 'B') {
            B ~= i;
        }
        else if (c == 'R') {
            R ~= i;
        }
        else if (c == 'K') {
            K = i;
        }
    }

    bool cond1 = B[0] % 2 != B[1] % 2;
    bool cond2 = R[0] < K && K < R[1];

    string res = cond1 && cond2 ? "Yes" : "No";
    res.writeln;
}
