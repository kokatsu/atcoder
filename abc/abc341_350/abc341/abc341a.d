import std;

void main() {
    int N;
    readf("%d\n", N);

    string res = "10".replicate(N) ~ "1";
    res.writeln;
}
