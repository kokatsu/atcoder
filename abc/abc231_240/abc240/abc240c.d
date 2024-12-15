import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto list = new bool[](X + 1);
    list[0] = true;
    foreach (_; 0 .. N) {
        int a, b;
        readf("%d %d\n", a, b);
        foreach_reverse (i; 0 .. X + 1) {
            if (list[i]) {
                if (i + a <= X)
                    list[i + a] = true;
                if (i + b <= X)
                    list[i + b] = true;
                list[i] = false;
            }
        }
    }

    writeln(list[X] ? "Yes" : "No");
}
