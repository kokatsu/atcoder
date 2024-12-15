import std;

void main() {
    int A, B;
    string S;
    readf("%s %d\n%s\n", A, B, S);

    bool isOK = true;
    foreach (i, s; S) {
        if (i == A)
            isOK &= (s == '-');
        else
            isOK &= std.uni.isNumber(s);
    }

    writeln(isOK ? "Yes" : "No");
}
