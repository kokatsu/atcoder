import std;

void main() {
    string S, T, U;
    readf("%s %s %s\n", S, T, U);

    string res = "valid";
    if (S.length != 5 || T.length != 7 || U.length != 5) {
        res = "invalid";
    }

    res.writeln;
}
