import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto A = readln.chomp.split.to!(int[]);

    bool[int] list;
    foreach (a; A) {
        list[a] = true;
    }

    bool isOK;
    foreach (a; A) {
        if (X + a in list) {
            isOK = true;
        }
    }

    writeln(isOK ? "Yes" : "No");
}