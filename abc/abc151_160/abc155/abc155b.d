import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(int[]);

    bool isOK = true;
    foreach (a; A) {
        if (a % 2 == 1)
            continue;

        isOK &= (a % 3 == 0 || a % 5 == 0);
    }

    writeln(isOK ? "APPROVED" : "DENIED");
}
