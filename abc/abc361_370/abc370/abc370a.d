import std;

void main() {
    int L, R;
    readf("%d %d\n", L, R);

    string res = "Invalid";
    if (L == 1 && R == 0) {
        res = "Yes";
    }
    else if (L == 0 && R == 1) {
        res = "No";
    }

    res.writeln;
}
