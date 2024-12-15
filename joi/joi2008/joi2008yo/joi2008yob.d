import std;

void main() {
    string S;
    readf("%s\n", S);

    int joi, ioi;
    foreach (i; 2 .. S.length) {
        if (S[i - 2 .. i + 1] == "JOI")
            ++joi;
        if (S[i - 2 .. i + 1] == "IOI")
            ++ioi;
    }

    string res = format("%d\n%d", joi, ioi);
    res.writeln;
}
