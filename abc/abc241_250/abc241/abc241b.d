import std;

void main() {
    int N, M;
    readf("%d %d\n", N, M);

    auto A = readln.chomp.split.to!(int[]);
    auto B = readln.chomp.split.to!(int[]);

    int[int] list;
    foreach (a; A)
        ++list[a];

    bool isOK = true;
    foreach (b; B) {
        if (!(b in list) || list[b] == 0) {
            isOK = false;
            break;
        }
        else {
            --list[b];
        }
    }

    writeln(isOK ? "Yes" : "No");
}
