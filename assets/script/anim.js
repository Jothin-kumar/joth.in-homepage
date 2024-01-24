function bodyLoadedAnim() {
    const main = document.getElementById("main")
    const works = document.getElementsByClassName('work')
    for (let i = 0; i < works.length; i++) {
        works[i].classList.add((i % 2) ? "left-in": "right-in")
    }
    const animWorks = () => {
        for (let i = 0; i < works.length; i++) {
            const elem = works[i]
            const c = elem.getBoundingClientRect()
            if (c.top < main.clientHeight) {
                elem.style.animationPlayState = "running"
            }
        }
    }
    main.addEventListener("scroll", animWorks)
    document.getElementById("works").addEventListener("scroll", animWorks)
}