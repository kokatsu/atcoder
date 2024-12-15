import std;

void main() {
    auto a = new int[](5);
    foreach (i; 0 .. 5)
        readf("%d\n", a[i]);

    int k;
    readf("%d\n", k);

    bool isOK = (a[4] - a[0] <= k);
    writeln(isOK ? "Yay!" : ":(");
}
