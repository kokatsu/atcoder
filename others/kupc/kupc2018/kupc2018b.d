import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto c = new string[](H);
    foreach (i; 0 .. H)
        readf("%s\n", c[i]);

    int x = H - 1, y = c[x].countUntil('s').to!int;

    auto seen = new bool[][](H, W);

    string res = "impossible";

    void f(int u, int v, string command) {
        seen[u][v] = true;
        if (u == 0) {
            res = command;
        }
        else {
            if (v > 0 && c[u - 1][v - 1] == '.' && !seen[u - 1][v - 1]) {
                f(u - 1, v - 1, command ~ "L");
            }
            if (c[u - 1][v] == '.' && !seen[u - 1][v]) {
                f(u - 1, v, command ~ "S");
            }
            if (v < W - 1 && c[u - 1][v + 1] == '.' && !seen[u - 1][v + 1]) {
                f(u - 1, v + 1, command ~ "R");
            }
        }
    }

    f(x, y, "");

    res.writeln;
}
