export const fetchBusiness = (businessId) => {
    //debugger
    return(
        $.ajax({
            method: "GET",
            url: `/api/businesses/${businessId}`
        })
    )
}