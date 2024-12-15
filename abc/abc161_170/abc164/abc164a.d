import std;

void main() {
    int S, W;
    readf("%d %d\n", S, W);

    writeln(S <= W ? "unsafe" : "safe");
}
