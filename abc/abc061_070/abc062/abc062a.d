import std;

enum int N = 2;
enum int[] G = [4, 6, 9, 11];

void main() {
    int x, y;
    readf("%d %d\n", x, y);

    bool isOK;
    if (x != N && y != N) {
        isOK = (G.canFind(x) == G.canFind(y));
    }

    writeln(isOK ? "Yes" : "No");
}