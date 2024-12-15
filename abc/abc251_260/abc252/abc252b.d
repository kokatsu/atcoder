import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    B[] -= 1;
    auto list = new bool[](N);
    foreach (b; B)
        list[b] = true;

    int M = A.maxElement;
    bool isOK;
    foreach (i, a; A) {
        if (a == M && list[i])
            isOK = true;
    }

    writeln(isOK ? "Yes" : "No");
}
