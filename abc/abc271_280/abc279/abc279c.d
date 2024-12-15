import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    auto S = new string[](H), T = new string[](H);
    foreach (i; 0 .. H)
        readf("%s\n", S[i]);
    foreach (i; 0 .. H)
        readf("%s\n", T[i]);

    auto U = new dchar[][](W, H), V = new dchar[][](W, H);
    foreach (i; 0 .. H) {
        foreach (j; 0 .. W) {
            U[j][i] = S[i][j];
            V[j][i] = T[i][j];
        }
    }

    U.sort, V.sort;

    writeln(U == V ? "Yes" : "No");
}
