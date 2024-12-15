import std;

void main() {
    int H, W;
    readf("%d %d\n", H, W);

    int R, C;
    readf("%d %d\n", R, C);

    int res;

    if (H > 1)
        res += (R <= 1 || R >= H ? 1 : 2);
    if (W > 1)
        res += (C <= 1 || C >= W ? 1 : 2);

    res.writeln;
}
