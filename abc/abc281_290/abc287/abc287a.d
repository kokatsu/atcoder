import std;

void main() {
    int N;
    readf("%d\n", N);

    int F;
    foreach (_; 0 .. N) {
        string S;
        readf("%s\n", S);

        if (S == "For") {
            ++F;
        }
    }

    string res = F * 2 > N ? "Yes" : "No";
    res.writeln;
}
