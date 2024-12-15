import std;

void main() {
    long N, W;
    readf("%d %d\n", N, W);

    long limit = 2 * 10 ^^ 5 + 1;

    auto water = new long[](limit);
    foreach (i; 0 .. N) {
        long S, T, P;
        readf("%d %d %d\n", S, T, P);

        water[S] += P, water[T] -= P;
    }

    auto cum = water.cumulativeFold!"a + b";

    bool isOK = true;
    foreach (c; cum) {
        if (c > W) {
            isOK = false;
            break;
        }
    }

    writeln(isOK ? "Yes" : "No");
}
