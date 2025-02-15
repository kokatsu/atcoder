import std;

enum string S = "sick";

void main() {
    string S1, S2;
    readf("%s %s\n", S1, S2);

    int res;
    if (S1 == S) {
        res = (S2 == S) ? 1 : 2;
    }
    else {
        res = (S2 == S) ? 3 : 4;
    }

    res.writeln;
}
