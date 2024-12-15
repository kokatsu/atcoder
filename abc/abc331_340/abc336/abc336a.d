import std;

void main() {
    int N;
    readf("%d\n", N);

    string res = "L" ~ "o".replicate(N) ~ "ng";
    res.writeln;
}
